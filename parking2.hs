main = interact (unlines . walken . tail . lines)

walken :: [String] -> [String]
walken [] = []
walken (x:y:xs) =
    let mx = maximum $ map read (words y)
        mn = minimum $ map read (words y)
    in show ((mx - mn)*2) : walken xs

