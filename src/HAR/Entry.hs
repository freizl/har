{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell   #-}

module HAR.Entry
       (
         Entry(..)
       ) where

import           Data.Aeson.TH
import           Data.Text     (Text)

import           HAR.Cache     (Cache)
import           HAR.Request   (Request)
import           HAR.Response  (Response)
import           HAR.Timings   (Timings)

data Entry = Entry { pageref         :: Maybe Text
                   , startedDateTime :: Text
                   , time            :: Integer
                   , request         :: Request
                   , response        :: Response
                   , cache           :: Maybe Cache
                   , timings         :: Timings
                   , serverIPAddress :: Maybe Text
                   , connection      :: Maybe Text
                   , comment         :: Maybe Text
                   } deriving (Show)

$(deriveJSON defaultOptions ''Entry)
