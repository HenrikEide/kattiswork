import Data.Char
main = interact $ test

test = dropWhile (=='0') . reverse . solvehelp . map reverse . lines

addPad :: [[Char]] -> [[Char]]
addPad ([]) = []
addPad (x:[]) = []
addPad (x:y:_) = if (length x) > (length y)
    then [x++(replicate ((length x)-(length y)) '0')] ++ [y]
    else [y++(replicate ((length y)-(length x)) '0')] ++ [x]

solvehelp :: [[Char]] -> [Char]
solvehelp xs = solve (head xs) (head (tail xs)) 0

solve :: [Char] -> [Char] -> Int -> [Char]
solve [] [] carry = if carry>0 then (show carry) else []
solve [] (y:ys) carry = (show carry) ++ solve "0" ys ((read [y]+carry) `div` 10)
solve (x:xs) [] carry = (show carry) ++ solve xs "0" ((read [x]+carry) `div` 10)
solve (x:xs) (y:ys) carry = (show ((a+b+carry)`mod`10)) ++ solve xs ys ((a+b+carry) `div` 10)
    where
        a = read [x]
        b = read [y]
