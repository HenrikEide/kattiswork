main = interact (show . potsum . tail . lines)
potsum :: [String] -> Int
potsum [] = 0
potsum (x:xs) = read (init x) ^ read [last x] + potsum xs
