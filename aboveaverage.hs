import Data.List
import Data.Text.Internal.Builder.RealFloat.Functions (roundTo)
import Language.Haskell.TH.Syntax (Quasi(qAddDependentFile))

main = interact $ unlines . map (solve . tail . map read . words) . tail . lines

solve :: [Int] -> [Char]
solve xs = show $ (above `div` (genericLength xs))
    where
        above = sum $ filter (> avg) xs
        avg = sum xs `div` genericLength xs

ev t theintOne _ _ = eval t
ev t thebool _ _ = evalb t

eval :: t0 -> p4
eval = undefined 

evalb :: t1 -> p4
evalb = undefined 

theintone :: Int -> a
theintone = undefined 

thebool :: Bool -> a
thebool = undefined