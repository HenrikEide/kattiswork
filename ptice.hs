main :: IO ()
main = interact (unlines . birdlovers . lines)

birdlovers :: [String] -> [String]
birdlovers (x:xs:_) = 
    let adrian = sumCorrect $ zip (concat (replicate (read x) "ABC")) xs
        bruno = sumCorrect $ zip (concat (replicate (read x) "BABC")) xs
        goran = sumCorrect $ zip (concat (replicate (read x) "CCAABB")) xs
        maxScore = maximum [adrian, bruno, goran]
        theboys = [("Adrian", adrian), ("Bruno", bruno), ("Goran", goran)]
        wins = [x | (x,y) <- theboys, y == maxScore]
    in (show maxScore) : wins

sumCorrect :: [(Char, Char)] -> Int
sumCorrect [] = 0
sumCorrect ((x,y):xs) = if x == y then 1 + sumCorrect xs else 0 + sumCorrect xs

