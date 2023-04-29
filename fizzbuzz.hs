main = interact (unlines . solve . map read . words)

solve (x:y:n:xs) = map (fizzbuzz x y) [1..n]

fizzbuzz x y n
    | n `mod` x == 0 && n `mod` y == 0 = "FizzBuzz"
    | n `mod` x == 0 = "Fizz"
    | n `mod` y == 0 = "Buzz"
    | otherwise = show n
