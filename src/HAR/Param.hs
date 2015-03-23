{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell   #-}

module HAR.Param where

import           Data.Aeson.TH
import           Data.Text     (Text)

data Param = Param { name        :: Text
                   , value       :: Maybe Text
                   , fileName    :: Maybe Text
                   , contentType :: Maybe Text
                   , comment     :: Maybe Text
                   } deriving (Show)

$(deriveJSON defaultOptions ''Param)
