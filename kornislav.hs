import Data.List (sort)
main = interact $ solve . init . sort . map read . words

solve :: [Int] -> [Char]
solve xs = show $ (head xs) * (last xs)


analytics :: String -> String -> Int 
analytics xs ys = length ys - (sum $ [1 | x <- xs, elem x ys])



