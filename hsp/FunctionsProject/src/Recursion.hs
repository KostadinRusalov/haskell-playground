module Recursion where

-- zad 1
log2 :: (Num p, Integral t) => t -> p
log2 1 = 0
log2 n = 1 + log2 (n `div` 2)

-- zad 2, 3 -- stari

-- zad 4
row :: Int -> String
row n = replicate n '*'
tri :: Int -> IO ()
tri 1 = putStrLn "*"
tri n = do 
        putStrLn (row n) 
        tri (n - 1)


