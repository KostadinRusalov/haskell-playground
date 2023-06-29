module Lib
    ( someFunc
    ) where

someFunc :: IO ()
someFunc = putStrLn "someFunc"

-- 14
duplicate xs l = map (\x -> [x,x]) xs 
