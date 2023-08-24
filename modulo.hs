import Data.List (nub)
main = interact $ show . length . nub . map (`mod` 42) . map read . lines