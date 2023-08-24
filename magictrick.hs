main = interact $ show . checkDups

checkDups :: String -> Int
checkDups [] = 1
checkDups (x:xs) = if x `elem` xs then 0 else checkDups xs