import Data.List (transpose)
main = do
    ls <- fmap lines getContents
    putStr $ if "OOO" `elem` (ls ++ transpose ls) || diagCheck ls
        then "Jebb"
        else "Neibb"

diagCheck :: [String] -> Bool
diagCheck ls = "OOO" `elem` [diag1, diag2]
    where
        diag1 = zipWith (!!) ls [0..]
        diag2 = zipWith (!!) ls [2,1,0]