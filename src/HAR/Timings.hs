{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell   #-}

module HAR.Timings
       (
         Timings(..)
       ) where

import           Data.Aeson.TH
import           Data.Text     (Text)

data Timings = Timings { blocked :: Integer
                       , dns     :: Integer
                       , connect :: Integer
                       , send    :: Integer
                       , wait    :: Integer
                       , receive :: Integer
                       , ssl     :: Integer
                       , comment :: Maybe Text
                       } deriving (Show)

$(deriveJSON defaultOptions ''Timings)
