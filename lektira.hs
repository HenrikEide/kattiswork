main = interact solve
solve xs = undefined

qs [] = []
qs (x:xs) = qs l ++ [x] ++ qs h
        where
            l = [a | a <- xs, a<=x]
            h = [a | a <- xs, a>x]


dobb :: [Int] -> [Int]
dobb xs = map (\x -> x*4) xs


allpals :: Eq a => [[a]] -> Bool 
allpals = all (\x -> reverse x == x)

