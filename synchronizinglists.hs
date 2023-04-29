import Data.List (sort, sortBy)
import Data.Function (on)
import Data.Text (strip)

main = interact $ testmain

testmain = reverse . dropWhile ('\n'==) . reverse . unlines . map unlines . map(map show) . map solve . map midsplit . map(map read) . casesplit . lines

casesplit [] = []
casesplit (x:xs) = (take ((read x)*2) xs) : casesplit (drop ((read x)*2) xs)

midsplit xs = splitAt ((length xs) `div` 2) xs

f1 :: Num a => [a] -> [a] -> a
f1 = ((sum . (map (\(x,y) -> x*y))) .) . zip
f xs = sum . map (\(x,y) -> x*y) . zip xs

f2 :: (Monoid m, Num m) => [m] -> [m] -> m
f2 xs ys = foldMap (\(x,y) -> x*y) (zip xs ys)

solve :: ([Int],[Int]) -> [Int]
solve (ys,xs) = let
    sorted = sortBy (compare `on` fst) (zip ys [0..])
    in fst $ unzip $ sortBy (compare `on` snd) $ zip (sort xs) (snd (unzip sorted))