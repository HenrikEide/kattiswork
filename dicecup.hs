import Data.List (nub)
main = interact $ unlines . map show . solve . map read . words

solve :: [Int] -> [Int]
solve xs = dicefix (head xs) (head (tail xs))

dicefix :: Int -> Int -> [Int]
dicefix x y = let
    combs = concat [[l+r | r <- [1..y]] | l <- [1..x]]
    maxNum = findmax (nub combs) combs
    in filter (\x -> county combs x == maxNum) (nub combs)

findmax :: [Int] -> [Int] -> Int 
findmax xs ys = maximum $ map (county ys) xs

county :: [Int] -> Int -> Int 
county ys x = length $ filter (== x) ys