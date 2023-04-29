main = interact $ unlines . solve . lines
solve xs = match (pyt (words (head xs))) $ tail xs
pyt xs = sqrt ((read (xs !! 1) ** 2) + (read (xs !! 2) ** 2))
match _ [] = []
match l (x:xs) = if l >= (read x) then "DA" : match l xs
                else "NE" : match l xs