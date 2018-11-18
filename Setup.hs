module Main (main) where

import           Distribution.Simple
import           System.Process      (createProcess, shell)

main :: IO ()
main = do
  createProcess $ shell "autoreconf"
  defaultMainWithHooks defaultUserHooks
