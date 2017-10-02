{-# LANGUAGE TypeOperators, GADTs #-}
module PtrArray where

import Foreign hiding (free)
import qualified Foreign
import Foreign.Marshal.Array
import Foreign.C
import System.IO.Unsafe
import qualified Foreign.Concurrent as FC


-- Broken man's linear types.
type a ⊗ b = (a,b)
type a ⊸ b = a -> b

infixr ⊸
type Effect = IO () -- for simplicity
-- instance Monoid Effect

type N a = a ⊸ Effect

newtype Bang a = Bang { unBang :: a }


-- | Outside the GC
data MAr a = MAr {-ω-}Int {-ω-}(Ptr a)

-- | Back to the GC
data Ar a = Ar Int (ForeignPtr a)

class Data a where
  move :: a -> Bang a
  free :: a ⊸ ()
instance Data (Ptr a) where
  move x = Bang x
  free x = ()

withNewAr :: Storable a => Int -> (MAr a ⊸ Bang k) ⊸ k
withNewAr n f = unBang $ unsafePerformIO $
  allocaArray n $ \ar ->
    return $ f $ MAr n ar

updateAr :: Storable a => Int -> a -> MAr a ⊸ MAr a
updateAr n byte (MAr size ar) = unsafePerformIO $ do
  pokeElemOff ar n byte
  return $ MAr size ar

freeMAr :: MAr a ⊸ ()
freeMAr (MAr _ ar) = unsafePerformIO $ Foreign.free ar

freezeAr :: MAr a ⊸ Bang (Ar a)
freezeAr (MAr size ar) = Bang $ Ar size $ unsafePerformIO $
  FC.newForeignPtr ar (Foreign.free ar)

indexMAr :: Storable a => Int -> MAr a ⊸ (MAr a ⊗ a)
indexMAr i (MAr size ar) =
  (MAr size ar, unsafePerformIO $ peekElemOff ar i)

indexAr :: Storable a => Int -> Ar a -> a
indexAr i (Ar size fptr) = unsafePerformIO $
  withForeignPtr fptr $ \ar ->
    peekElemOff ar i

{- ex = withNewByteArray 3 $ \ar ->
  let ar' = updateByteArray 1 64 ar
      (Bang ar'') = freezeByteArray ar'
  in indexByteArray 1 ar'' -}
