{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell   #-}

module HAR.Browser where

import           Data.Aeson.TH
import           Data.Text     (Text)

data Browser = Browser { name    :: Text
                       , version :: Text
                       , comment :: Maybe Text
                       } deriving (Show)

$(deriveJSON defaultOptions ''Browser)
