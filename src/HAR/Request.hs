{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell   #-}

module HAR.Request where

import           Data.Aeson.TH
import           Data.Text       (Text)

import           HAR.Cookie      (Cookie)
import           HAR.Header      (Header)
import           HAR.PostData    (PostData)
import           HAR.QueryString (QueryString)

type URL = Text

data Request = Request { method      :: Text
                       , url         :: URL
                       , httpVersion :: Text
                       , cookies     :: [Cookie]
                       , headers     :: [Header]
                       , queryString :: [QueryString]
                       , postData    :: Maybe PostData
                       , headersSize :: Integer
                       , bodySize    :: Integer
                       , comment     :: Maybe Text
                       } deriving (Show)

$(deriveJSON defaultOptions ''Request)
