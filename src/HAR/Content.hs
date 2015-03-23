{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell   #-}

module HAR.Content where

import           Data.Aeson.TH
import           Data.Text     (Text)

data Content = Content { size        :: Integer
                       , compression :: Maybe Integer
                       , mimeType    :: Text
                       , text        :: Maybe Text
                       , encoding    :: Maybe Text
                       , comment     :: Maybe Text
                       } deriving (Show)

$(deriveJSON defaultOptions ''Content)
