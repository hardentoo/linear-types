-- | An (internally) pure version of Cursors.  This one relies on a
-- Binary interface for serialization, rather than Storable.
-- 
-- Cursors are pointers into byte-addressed memory that allow
-- type-safe writing and reading of serialized data.
-- 
-- Requires the "linear-types" branch of GHC from the tweag.io fork.

{-# LANGUAGE GADTs #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE PartialTypeSignatures #-}

module Cursors.PureBinary
    ( -- * Abstract Cursor datatypes
      Has, Needs, Packed
      -- * Public cursor interface
    , writeC, readC, fromHas, toHas
    , finish, withOutput

      -- * Unsafe interface
    , unsafeCastNeeds
    )
    where

import Data.ByteString.Lazy.Char8 as BS
import Data.ByteString.Builder as B
import Data.Binary (get, put, Binary) -- encode, decode, getWord8
import Data.Binary.Get (runGetOrFail)
import Data.Binary.Put (execPut)
import Linear.Std (Unrestricted(..))
import Linear.Unsafe (unsafeCastLinear, unsafeCastLinear2, unsafeUnrestricted)

app :: Builder ⊸ Builder ⊸ Builder
app = unsafeCastLinear2 bapp -- HACK
 where
  bapp :: Builder -> Builder -> Builder      
  bapp = mappend

-- Cursor Types:
--------------------------------------------------------------------------------

-- | A "needs" cursor requires a list of fields be written to the
-- bytestream before the data is fully initialized.  Once it is, a
-- value of the (second) type parameter can be extracted.
newtype Needs (l :: [*]) t = Needs Builder

-- | A "has" cursor is a pointer to a series of consecutive,
-- serialized values.  It can be read multiple times.
newtype Has (l :: [*]) = Has ByteString
  deriving Show

-- | A packed value is very like a singleton Has cursor.  It
-- represents a dense encoding of a single value of the type `a`.
newtype Packed a = Packed ByteString
  deriving (Show,Eq)


-- Cursor interface
--------------------------------------------------------------------------------
         
-- | Write a value to the cursor.  Write doesn't need to be linear in
-- the value written, because that value is serialized and copied.
writeC :: Binary a => a -> Needs (a ': rst) t ⊸ Needs rst t
writeC a (Needs bld1) = Needs (bld1 `app` execPut (put a))

-- | Reading from a cursor scrolls past the read item and gives a
-- cursor into the next element in the stream:
readC :: Binary a => Has (a ': rst) -> (a, Has rst)
readC (Has bs) =
  case runGetOrFail get bs of
    Left (_,_,err) -> error $ "internal error: "++err
    Right (remain,_num,a) -> (a, Has remain)

-- | Safely "cast" a has-cursor to a packed value.
fromHas :: Has '[a] ⊸ Packed a
fromHas (Has b) = Packed b

-- | Safely cast a packed value to a has cursor.
toHas :: Packed a ⊸ Has '[a]
toHas (Packed b) = Has b

-- | Perform an unsafe conversion reflecting knowledge about the
-- memory layout of a particular type (when packed).
unsafeCastNeeds :: Needs l1 a ⊸ Needs l2 a
unsafeCastNeeds (Needs b) = (Needs b)
                   
toBS :: Builder ⊸ ByteString
toBS = unsafeCastLinear B.toLazyByteString

-- | "Cast" a fully-initialized write cursor into a read one.
finish :: Needs '[] a ⊸ Unrestricted (Has '[a])
finish (Needs bs) = unsafeUnrestricted $ Has (toBS bs)

-- | Allocate a fresh output cursor and compute with it.
withOutput :: forall a b. Int -> (Needs '[a] a ⊸ Unrestricted b)
                              ⊸ Unrestricted b
withOutput _sz fn =
    force $ fn (Needs mempty)
  where
    force :: Unrestricted b ⊸ Unrestricted b
    force (Unrestricted x) = Unrestricted x

