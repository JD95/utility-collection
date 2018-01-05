module Main where

import GitHub.Endpoints.Repos
import GitHub.Data.Name
import qualified Data.ByteString as B
import Data.String.Conv

main :: IO ()
main = do
  putStr "username: "
  usr <- toS <$> getLine
  putStr "password: "
  pass <- toS <$> getLine
  putStr "repo: name"
  r <- toS <$> getLine
  result <- createRepo' (BasicAuth usr pass) (newRepo (N r))
  print result
