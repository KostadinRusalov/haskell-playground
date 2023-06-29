module Lib
    ( someFunc
    ) where

someFunc :: IO ()
someFunc = putStrLn "someFunc"


getName = do
    firstName <- getLine
    secondName <- getLine
    putStrLn (firstName ++ " " ++ secondName)

double x = x + x

add1 x = x + 1

remove1 x = x - 1

execute f = f

factorial :: Integer -> Integer
factorial n =
    if n == 1
        then 1
        else n * factorial (n - 1)

factorial2 :: Integer -> Integer
factorial2 n
    | n == 1 = 1
    | otherwise = n * factorial2 (n - 1)

factorial3 :: Integer -> Integer
factorial3 1 = 1
factorial3 x = x * factorial (x - 1)

fibonacci :: Integer -> Integer
fibonacci 1 = 1
fibonacci 2 = 1
fibonacci n = fibonacci (n - 1) + fibonacci (n - 2)

fibonacci2 :: Integer -> Integer
fibonacci2 n =
    if n == 1 || n == 2
        then 1
        else fibonacci (n - 1) + fibonacci (n - 2)

fibonacci3 :: Integer -> Integer
fibonacci3 n
    | n == 1 = 1
    | n == 2 = 1
    | otherwise = fibonacci (n - 1) + fibonacci (n - 2)

x :: Rational -> Rational
x f = f

