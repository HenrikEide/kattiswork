main = do
    x:xs <- fmap lines getContents
    putStr $ canEscape 0 $ map (map read . words) xs

canEscape :: Int -> [[Int]] -> String
canEscape n [] = "possible"
canEscape n ((x:y:_):xs)
    | n + x < y = "impossible"
    | otherwise = canEscape (n + x) xs