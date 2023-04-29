main = interact solve
solve [] = []
solve (x:xs) = if x `elem` ['a', 'e', 'i', 'o', 'u'] then x : (solve (drop 2 xs))
            else x : solve xs