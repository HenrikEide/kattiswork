import Data.List
import Data.Char

numUnderscores = sum . map (\x -> if '_' `elem` x then 1 else 0) . words


rotation :: Int -> [Char] -> [Char]
rotation n xs = take (length xs) . drop n $ cycle xs

stokky :: [Char] -> [Char]
stokky = unlines . transpose . zipWith rotation [0..] . transpose . lines



