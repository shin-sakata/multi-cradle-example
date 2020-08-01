{-# LANGUAGE TemplateHaskell #-}

module Lib
    ( someFunc
    ) where

import Data.FileEmbed (embedStringFile)

someFunc :: IO ()
someFunc = putStrLn file

file :: String
file = $(embedStringFile "./src/Lib.hs")