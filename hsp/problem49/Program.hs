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