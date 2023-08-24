main = interact (unlines . map show . map solve . kattissplit . tail . lines)

kattissplit [] = []
kattissplit (x:xs) = (take (read x) xs) : (kattissplit $ drop (read x) xs)

solve [] = 0
solve (x:xs) = if x `elem` xs then 0 + solve xs else 1 + solve xs