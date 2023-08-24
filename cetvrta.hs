import Data.List (transpose)
main = interact $ unwords . solve . transpose . map (map read) . map words . lines

solve :: [[Int]] -> [[Char]]
solve [] = []
solve (x:xs) = fstUnique x : solve xs

fstUnique :: [Int] -> String
fstUnique [] = []
fstUnique (x:xs) = if x `elem` xs then fstUnique (xs++[x]) else show x