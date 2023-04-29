import GHC.Base (Eq)
relem :: Eq a => [a] -> [a] -> [a]
relem xs = foldr (\x y -> if x `elem` xs then y else x:y) []
