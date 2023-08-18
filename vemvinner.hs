import Data.List (transpose)
import Control.Monad (replicateM)
main = do
    board <- replicateM 3 $ fmap (filter (/= ' ')) getLine    
    let winner = checkWinner board
    putStrLn $ winner ++ " har vunnit"

checkWinner :: [String] -> String
checkWinner board
    | any (all (== 'X')) board = "Johan"
    | any (all (== 'O')) board = "Abdullah"
    | any (all (== 'X')) (transpose board) = "Johan"
    | any (all (== 'O')) (transpose board) = "Abdullah"
    | all (== 'X') [board !! i !! i | i <- [0..2]] = "Johan"
    | all (== 'X') [last (head board), board !! 1 !! 1, head (last board)] = "Johan"
    | all (== 'O') [board !! i !! i | i <- [0..2]] = "Abdullah"
    | all (== 'O') [last (head board), board !! 1 !! 1, head (last board)] = "Abdullah"
    | otherwise = "ingen"