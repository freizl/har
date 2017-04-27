{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell   #-}

module HAR.Timings
       (
         Timings(..)
       ) where

import           Data.Aeson.TH
import           Data.Text     (Text)

data Timings = Timings { blocked :: Maybe Double
                       , dns     :: Maybe Double
                       , connect :: Maybe Double
                       , send    :: Double
                       , wait    :: Double
                       , receive :: Double
                       , ssl     :: Maybe Double
                       , comment :: Maybe Text
                       } deriving (Show)

$(deriveJSON defaultOptions ''Timings)
