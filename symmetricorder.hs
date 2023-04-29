import Data.Char (isAlpha)
import Data.List (sortBy)

main :: IO ()
main = interact (unlines . solve . init . lines)

solve :: [String] -> [String]
solve xs = symmetry xs 1

symmetry :: [String] -> Int -> [String]
symmetry [] n = []
symmetry (x:xs) n =
    let names = takeWhile (all isAlpha) xs
        rest = dropWhile (all isAlpha) xs
        set = "Set " ++ (show n)
    in [set] ++ symSort (sortBy lenSort names) ++ (symmetry rest (n+1))


symSort :: [[Char]] -> [[Char]]
symSort [] = []
symSort [x] = [x]
symSort (x:y:xs) = x : (symSort xs) ++ [y]

lenSort :: [Char] -> [Char] -> Ordering
lenSort xs ys
    | length xs > length ys = GT
    | length xs < length ys = LT 
    | length xs == length ys = EQ