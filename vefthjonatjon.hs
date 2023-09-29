main = do
    n:xs <- fmap lines getContents
    print $ computerCount xs

computerCount :: [String] -> Int
computerCount xs = minimum [a, b, c]
            where
                a = jCount $ map head xs
                b = jCount $ map (!! 2) xs
                c = jCount $ map last xs

jCount :: String -> Int
jCount xs = length $ filter (== 'J') xs