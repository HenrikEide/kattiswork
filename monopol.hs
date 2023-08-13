main = interact $ solve . map read . words . last . lines

solve :: [Integer] -> String
solve xs = show $ sum $ map (\x -> fromInteger (6 - abs (x-7)) / 36) xs