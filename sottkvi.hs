main = do
    x:xs <- fmap lines getContents
    let k = sum $ tail $ map read $ words x
    let ks = map ((+13) . read) xs
    print $ length $ filter (<k) ks