{-# LANGUAGE BangPatterns #-}


data List a = Empty
    | Cons !a !(List a)


toList :: [a] -> List a
toList [] = Empty
toList (x:xs) = Cons x (toList xs)

kek :: String -> String
kek [] = []
kek ('k':'e':'k':'i':xs) = "There it is"
kek (x:xs) = kek xs



main :: IO ()
main = interact $ unlines . map (solve 0 1) . map toList . map words . snd . unzip . filter (\(i,x) -> rem i 2 /= 0) . zip [0..] . tail . lines

solve :: Int -> Int -> List String -> String
solve n _ Empty = show n
solve n i (Cons x xs) = if (read x) == i then solve n (i+1) xs else solve (n+1) i xs

-- main = interact $ unlines . map unwords . map (map show) . map (map (`solve` 1)) . map(map(`zip` [0..])) . map (map read) . map words . sfilter . tail . lines

-- solve :: [(Int, Int)] -> Int -> Int
-- solve [] n = n
-- solve ((x,y):xs) n = if x/=n then solve (xs++[(x,(length xs)+1)]) (n)  else solve xs (n+1)

-- sfilter :: [String] -> [String]
-- sfilter [] = []
-- sfilter (x:xs) = if length x == 1 then sfilter xs else x : sfilter xs

-- main :: IO ()
-- main = interact solve

-- dvd :: [Int] -> Int -> Int
-- dvd [] _ = 0
-- dvd (x:xs) i = if x == i then dvd xs i+1 else 1 + dvd xs i

-- solve :: String -> String
-- solve s = unlines $ map (\x -> show (dvd (map read (words x)) 1)) (map fst (filter(\x -> mod (snd x) 2 == 0) (zip (drop 1 (lines s)) [0..])))


ssolve [] = []
ssolve xs = dotheThing (takeWhile (<'Z') xs) : ssolve (dropWhile (<'Z') xs)

dotheThing = undefined 