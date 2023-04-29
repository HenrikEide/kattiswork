planina' :: Int -> Int -> Int
planina' x 0 = x^2
planina' x n = planina' (x*2 - 1) (n-1)

main :: IO()
main = do
    x <- getLine
    putStr (show (planina' 2 (read x)))

