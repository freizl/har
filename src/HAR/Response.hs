{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell   #-}

module HAR.Response where

import           Data.Aeson.TH
import           Data.Text     (Text)

import           HAR.Content   (Content)
import           HAR.Cookie    (Cookie)
import           HAR.Header    (Header)

data Response = Response { status      :: Integer
                         , statusText  :: Text
                         , httpVersion :: Text
                         , cookies     :: [Cookie]
                         , headers     :: [Header]
                         , content     :: Content
                         , redirectURL :: Text
                         , headersSize :: Integer
                         , bodySize    :: Integer
                         , comment     :: Maybe Text
                       } deriving (Show)

$(deriveJSON defaultOptions ''Response)
