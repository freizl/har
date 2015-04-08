{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell   #-}

module HAR.PageTimings
       (
         PageTimings(..)
       ) where

import           Data.Aeson.TH
import           Data.Text     (Text)

data PageTimings = PageTimings
                   { onContentLoad :: Maybe Double
                   , onLoad        :: Maybe Double
                   , comment       :: Maybe Text
                   } deriving (Show)

$(deriveJSON defaultOptions ''PageTimings)
