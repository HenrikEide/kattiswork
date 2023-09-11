import Data.Char (isNumber)
import Text.Read (readMaybe)
import Data.Maybe (fromMaybe)
main = do
    _ <- getLine
    s <- getLine
    let x = solve s
    print $ maximum x

solve :: String -> [Int]
solve [] = []
solve s = fromMaybe (-1) (readMaybe (fst x)) : solve (snd x)
    where x = nextInt s

nextInt :: String -> (String, String)
nextInt = span isNumber . dropWhile (not . isNumber) 