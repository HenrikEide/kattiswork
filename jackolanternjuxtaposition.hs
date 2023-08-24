jack :: [String] -> Int
jack = foldr ((*).read) 1

main :: IO()
main = do
    x <- getLine 
    let kuck = words x
    putStr (show (jack kuck))

main' = interact solve

solve :: String -> String 
solve xs = show $ foldr ((*).read) 1 (words xs)

