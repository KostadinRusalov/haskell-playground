module FunctionsAndValues where

-- zad 1
double :: Num a => a -> a
double x = x + x

-- zad 2
myEven :: Integral a => a -> Bool
myEven x = x `mod` 2 == 0

-- zad 3
maxOf3 :: Ord a => a -> a -> a -> a
maxOf3 x y z = max x (max y z)

-- zad 4
add1 :: Num a => a -> a
add1 x = x + 1
remove1 :: Num a => a -> a
remove1 x = x - 1

execute :: (t1 -> t2) -> t1 -> t2
execute f = f

-- zad 5
factorial :: (Num a, Enum a) => a -> a
factorial n = product [1..n]

-- zad 6
fibonacci :: (Eq a, Num a, Num p) => a -> p
fibonacci 1 = 1
fibonacci 2 = 1
fibonacci n = fibonacci (n - 1) + fibonacci (n - 2)

