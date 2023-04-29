
main :: IO ()
main = interact $ unlines . filter (/="") . map (solve) . tail . lines

solve :: String -> String 
solve xs = if (take 10 xs == "Simon says") then drop 11 xs else ""


