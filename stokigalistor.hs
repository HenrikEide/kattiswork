import Data.List
main = do
    _ <- readLn :: IO Int
    xs <- fmap (map read . words) getLine :: IO [Int]
    let xss = sort xs
    print $ length [x | (x, y) <- zip xs xss, x /= y]