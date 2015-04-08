{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell   #-}

module HAR.Timings
       (
         Timings(..)
       ) where

import           Data.Aeson.TH
import           Data.Text     (Text)

data Timings = Timings { blocked :: Double
                       , dns     :: Double
                       , connect :: Double
                       , send    :: Double
                       , wait    :: Double
                       , receive :: Double
                       , ssl     :: Double
                       , comment :: Maybe Text
                       } deriving (Show)

$(deriveJSON defaultOptions ''Timings)
