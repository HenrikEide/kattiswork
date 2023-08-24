main = do
    s <- getLine :: IO String
    let m = if reverse (take 3 (reverse s)) == "eh?" then "Canadian!" else "Imposter!"
    putStrLn m