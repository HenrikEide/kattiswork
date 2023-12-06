import Control.Monad
main = do
    m <- readLn :: IO Float
    n <- readLn :: IO Float
    dotCount <- countDots n
    print $ dotCount / (n*m)

countDots :: Float -> IO Float
countDots n = do
    dots <- replicateM (round n) getLine
    let dotCount = sum $ map (length . filter (== '.')) dots
    return $ fromIntegral dotCount