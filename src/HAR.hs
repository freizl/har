{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell   #-}

module HAR where

import           Data.Aeson.TH

import           HAR.Log

data HAR = HAR { log :: Log }
         deriving (Show)

$(deriveJSON defaultOptions ''HAR)
