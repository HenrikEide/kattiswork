import Control.Monad
main = do
    line <- getLine
    let [n,m] = map read (words line) :: [Int]
    ls <- replicateM n getLine
    print $ sum $ map (`yarn` 0) ls

yarn :: String -> Int -> Int
yarn [] n = n
yarn (x:xs) n = yarn xs m where
    m = case x of
        '.' -> n+20
        'O' -> n+10
        '\\' -> n+25
        '/' -> n+25
        'A' -> n+35
        '^' -> n+5
        'v' -> n+22 
