{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE CPP #-}

module ByteArraySpec
    -- (spec)
    where

import qualified ByteArray as ByteArray
---------------------
import Data.ByteString (ByteString)
import qualified Data.ByteString as ByteString
import Data.Word (Word8)
import Foreign.Storable (sizeOf)
import Linear.Std
import Prelude hiding (($))
import Test.Hspec
import Test.Hspec.QuickCheck (prop)

prop_char1 :: Word8 -> Bool
prop_char1 n = 
        getUnrestricted $ ByteArray.alloc 128 $ \ w ->
          let
            test :: Unrestricted ByteString ⊸ Unrestricted Bool
            test (Unrestricted bs) =
                -- lintrace ("Got head " ++show (ByteString.head bs))
                (Unrestricted $ ByteString.head bs == n)
          in
            test (ByteArray.freeze (ByteArray.writeByte n w))

spec :: Spec 
spec = do
    describe "ByteArray: Word8" $ do

      prop "are written then read once correctly" prop_char1

      prop "have correct head after being written twice" $ \ (n :: Word8) (p :: Word8) ->
        getUnrestricted $ ByteArray.alloc 128 $ \ w ->
          let
            test :: Unrestricted ByteString ⊸ Unrestricted Bool
            test (Unrestricted bs) = Unrestricted $
              ByteString.head bs == n
          in
            test (ByteArray.freeze (ByteArray.writeByte p (ByteArray.writeByte n w)))
      prop "are written then read twice correctly" $ \ (n :: Word8) (p :: Word8) ->
        getUnrestricted $ ByteArray.alloc 128 $ \ w ->
          let
            test :: Unrestricted ByteString ⊸ Unrestricted Bool
            test (Unrestricted bs) = Unrestricted $
              ByteString.head bs == n &&
              ByteString.head (ByteString.drop 1 bs) == p
          in
            test (ByteArray.freeze (ByteArray.writeByte p (ByteArray.writeByte n w)))
    describe "ByteArray: Int" $ do
      prop "can be written once" $ \ (n :: Int) ->
        getUnrestricted $ ByteArray.alloc 128 $ \ w ->
          let
            test :: Unrestricted ByteString ⊸ Unrestricted Bool
            test (Unrestricted _) = Unrestricted $ True
          in
            test (ByteArray.freeze (ByteArray.writeStorable n w))
      prop "can be written twice" $ \ (n :: Int) (p :: Int)->
        getUnrestricted $ ByteArray.alloc 128 $ \ w ->
          let
            test :: Unrestricted ByteString ⊸ Unrestricted Bool
            test (Unrestricted _) = Unrestricted $ True
          in
            test (ByteArray.freeze (ByteArray.writeStorable p (ByteArray.writeStorable n w)))

      prop "are written then read once correctly" $ \ (n :: Int) ->
        getUnrestricted $ ByteArray.alloc 128 $ \ w ->
          let
            test :: Unrestricted ByteString ⊸ Unrestricted Bool
            test (Unrestricted bs) = Unrestricted $ ByteArray.headStorable bs == n
          in
            test (ByteArray.freeze (ByteArray.writeStorable n w))

      prop "are written then read twice correctly" $ \ (n :: Int) (p :: Int) ->
        getUnrestricted $ ByteArray.alloc 128 $ \ w ->
          let
            test :: Unrestricted ByteString ⊸ Unrestricted Bool
            test (Unrestricted bs) = Unrestricted $
              ByteArray.headStorable bs == n &&
              ByteArray.headStorable (ByteString.drop (sizeOf n) bs) == p
          in
            test (ByteArray.freeze (ByteArray.writeStorable p (ByteArray.writeStorable n w)))

    describe "ByteArray: Word8" $ do
      it "prop_counter 2 " (ByteArray.prop_counter 2)
      it "prop_counter 100 " (ByteArray.prop_counter 2)

    return ()
