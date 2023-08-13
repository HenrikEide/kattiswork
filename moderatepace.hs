import Data.List (sort)
main = interact $ unwords . map show . solve . map (map read . words) . tail . lines

solve :: [[Int]] -> [Int]
solve (xs:ys:zs:_) = map median (zip3 xs ys zs)

median :: (Int, Int, Int) -> Int
median (a, b, c) = sort [a, b, c] !! 1