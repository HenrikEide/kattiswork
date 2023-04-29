import Data.Binary (encode, decode)
import Numeric (showIntAtBase, readInt)
import Data.Char (intToDigit, digitToInt)
import Data.Maybe (listToMaybe, fromJust)

main = interact $ show . fromBin . reverse . toBin . read

toBin :: Int -> [Char]
toBin x = showIntAtBase 2 intToDigit x ""

fromBin :: [Char] -> Int
fromBin = fromJust . fmap fst . listToMaybe . readInt 2 (`elem` "01") digitToInt