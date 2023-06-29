module Lib where


{-
    n = 1: C(1) = ['0','1']
    n = 2: C(2) = ['00','01','11','10']
    n = 3: C(3) = ['000','001','011','010',´110´,´111´,´101´,´100´]
-}

gray 0 = [""]
gray n = add0 pre ++ add1 rpre
    where
        add0 = map ("0" ++)
        add1 = map ("1" ++)
        pre = gray (n - 1)
        rpre = reverse pre

-- fact :: (Num a, Enum a) => a -> a
-- fact n = product [1 .. n]
-- fib :: (Eq a, Num a, Num p) => a -> p
-- fib 0 = 0
-- fib 1 = 1
-- fib 2 = 1
-- fib n = fib (n - 1) + fib (n - 2)

-- main :: IO ()
-- main = do
--     n <- getLine
--     m <- getLine
--     let fb = fib (read n :: Int)
--     let fc = fact (read m :: Int)
--     let o = max fc fb
--     print o

row :: Int -> Char  -> String
row = replicate
tri :: Int -> Char -> IO ()
tri 1 s = do putChar s; putStrLn ""
tri n s = do
        putStrLn (row n s)
        tri (n - 1) s

main :: IO ()
main = do 
    n' <- getLine
    s' <- getLine 
    let n = (read n' :: Int)
    let s = (read s' :: Char)
    tri n s