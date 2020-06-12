module Main where

import qualified Lib
import qualified Text.Pandoc as Pandoc
import qualified Data.Map as Map
import qualified Data.ByteString.Char8 as BS

main :: IO ()
main = do
  print $ Pandoc.Meta Map.empty
  print $ BS.pack "foo"
