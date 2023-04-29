main = interact $ unlines . map str . solve . map read . words . last . lines

solve :: [Int] -> [(Int, Int)]
solve [] = []
solve (x:xs) = map (prst x) xs

prst :: Int -> Int -> (Int, Int)
prst x y = (x `div` z, y `div` z)
    where z = gcd x y

str :: (Int, Int) -> [Char]
str (x,y) = show x ++ "/" ++ show y

