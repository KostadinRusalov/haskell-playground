module Introduction where

main :: IO ()
main = do
    firstName <- getLine
    lastName <- getLine
    putStrLn (firstName ++ " " ++ lastName)