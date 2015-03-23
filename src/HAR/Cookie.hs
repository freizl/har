{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell   #-}

module HAR.Cookie where

import           Data.Aeson.TH
import           Data.Text     (Text)

data Cookie = Cookie { name       :: Text
                       , value    :: Text
                       , path     :: Maybe Text
                       , domain   :: Maybe Text
                       , expires  :: Maybe Text
                       , httpOnly :: Maybe Bool
                       , secure   :: Maybe Bool
                       , comment  :: Maybe Text
                       } deriving (Show)

$(deriveJSON defaultOptions ''Cookie)
