import Control.Monad
-- Ope doesnt work
generateHadamard :: Int -> [[Int]]
generateHadamard 1 = [[1]]
generateHadamard n = concatMap (\row -> [row, map negate row]) (generateHadamard (n `div` 2))

printSubMatrix :: [[Int]] -> Int -> Int -> Int -> Int -> IO ()
printSubMatrix matrix x y w h = do
    let subMatrix = [take w (drop x row) | row <- take h (drop y matrix)]
    mapM_ (putStrLn . unwords . map show) subMatrix
    putStrLn ""

main :: IO ()
main = do
    t <- readLn :: IO Int
    replicateM_ t $ do
        [n, x, y, w, h] <- fmap (map read . words) getLine :: IO [Int]
        let hadamardMatrix = generateHadamard n
        printSubMatrix hadamardMatrix x y w h
