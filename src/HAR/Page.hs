{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell   #-}

module HAR.Page
       (
         Page(..)
       ) where

import           Data.Aeson.TH
import           Data.Text       (Text)

import           HAR.PageTimings
data Page = Page { startedDateTime :: Text
                 , id              :: Text
                 , title           :: Text
                 , pageTimings     :: PageTimings
                 , comment         :: Maybe Text
                 } deriving (Show)

$(deriveJSON defaultOptions ''Page)
