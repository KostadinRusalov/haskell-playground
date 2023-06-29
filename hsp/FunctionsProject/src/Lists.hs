module Lists where
import GHC.IO.Buffer (bufferAvailable)

-- zad 1
reverseList :: [a] -> [a]
reverseList [] = []
reverseList (x:xs) = reverseList xs ++ [x]

-- zad 2
lengthList :: Num p => [a] -> p
lengthList = foldr (\x -> (+) 1) 0

-- zad 3
doublelist :: [a] -> [a]
doublelist [] = []
doublelist (x:xs) = x : x : doublelist xs

-- zad 4
remove :: [a] -> Int -> [a]
remove [] _ = []
remove ls e = take (e - 1) ls ++ remove (drop e ls) e

{-
    [1,2,3,4,5] 2
    [1] ++ remove [3,4,5] 2
    [1] ++ [3] ++ remove [5]
    [1] ++ [3] ++ [5] ++ remove []
    [1] ++ [3] ++ [5] ++ []
    [1,3,5]
-}