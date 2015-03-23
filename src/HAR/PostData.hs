{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell   #-}

module HAR.PostData where

import           Data.Aeson.TH
import           Data.Text     (Text)

import           HAR.Param

data PostData = PostData { mimeType :: Text
                         , params   :: [Param]
                         , text     :: Text
                         , comment  :: Maybe Text
                         } deriving (Show)

$(deriveJSON defaultOptions ''PostData)
