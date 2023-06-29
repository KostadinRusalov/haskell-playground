module Lib
    ( someFunc
    ) where
import Data.Bits (Bits(xor))
import Data.List (elemIndex)
import Data.Maybe (fromMaybe)
import GHC.Arr (arrEleBottom)

someFunc :: IO ()
someFunc = putStrLn "someFunc"

-- 1
-- last' :: [c] -> c
-- last' = head . reverse

-- 2
lastbutone :: [c] -> c
lastbutone = head . tail . reverse

-- 3
find :: Int -> [a] -> a
find k list = list !! (k - 1)

-- 4
-- howlong :: [t] -> Int
-- howlong [] = 0
-- howlong (x:xs) = 1 + howlong xs

-- 5
reverse' :: [a] -> [a]
reverse' [] = []
reverse' list = last list : reverse' (take (length list - 1) list)

-- 6
palindrom :: Eq a => [a] -> Bool
palindrom list = list == reverse list

-- 6 with recursion
palindrom' :: Eq a => [a] -> Bool
palindrom' [] = True
palindrom' list = symetry list && palindrom' (inside list)
    where
        symetry list = head list == last list
        inside = init . tail

-- 7 - with data which i dont know


-- 8 
compress :: Eq a => [a] -> [a]
compress [] = []
compress xs = fst rel : compress arel
    where
        rel = elmct xs -- repeating element
        arel = drop (snd rel) xs -- after repeating element

-- elmct is a func that returns (<first element>, <its count>) of a sting // element + count
-- "aaabbb" -> ('a', 3); "123" -> (1,1) 

elmct :: (Eq a, Num b) => [a] -> (a, b)
elmct xs = elmct' xs 0
    where
        elmct' [] _ = error "wtf"
        elmct' (x:xs) count
            | feqs (x:xs) = elmct' xs (count + 1)
            | otherwise = (x, count + 1)
        feqs [] = False -- first equals second 
        feqs [_] = False
        feqs (x:xs) = x == head xs

-- the best solution :
compress' :: Eq a => [a] -> [a]
compress' []     = []
compress' (x:xs) = x : compress' (dropWhile (== x) xs)

-- 9 
pack :: Eq a => [a] -> [[a]]
pack [] = []
pack xs = repl : pack arel
    where
        rel = elmct xs
        repl = replicate (snd rel) (fst rel)
        arel = drop (snd rel) xs

-- 10
encode :: Eq b => [b] -> [(Int, b)]
encode [] = []
encode xs = change rel : encode arel
    where 
        rel = elmct xs
        arel = drop (snd rel) xs
        change (a,b) = (b,a)
