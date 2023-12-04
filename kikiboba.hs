import Data.Text
main = do
    s <- fmap pack getLine
    let (k,b) = (count (pack "k") s, count (pack "b") s)
    putStrLn $ findS k b
findS k b
    | k==0 && b==0 = "none"
    | k==b = "boki"
    | k>b = "kiki"
    | otherwise = "boba"
