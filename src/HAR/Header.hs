{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell   #-}

module HAR.Header where

import           Data.Aeson.TH
import           Data.Text     (Text)

data Header = Header { name    :: Text
                     , value   :: Text
                     , comment :: Maybe Text
                     } deriving (Show)

$(deriveJSON defaultOptions ''Header)
