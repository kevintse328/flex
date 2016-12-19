{-# LANGUAGE DataKinds       #-}
{-# LANGUAGE TypeOperators   #-}
module Lib
    ( startApp
    ) where

import Data.Aeson
import Data.Aeson.TH
import Network.Wai
import Network.Wai.Handler.Warp
import Servant

type StaticAPI = Raw

startApp :: IO ()
startApp = runEnv 8080 app

app :: Application
app = serve api server

api :: Proxy StaticAPI
api = Proxy

staticAPI :: Proxy StaticAPI
staticAPI = Proxy

server :: Server StaticAPI
server = serveDirectory "static"
