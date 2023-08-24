-- TODO: this shit aint right
main = interact (unlines . map order . tail . lines)
order xs = addSpaces $ trick xs (read xs)

trick (x:xs) 1 = xs ++ [x]
trick xs i =
    let (a,b) = splitAt (i `mod` length xs) xs 
    in trick (a ++ (show (i-1)) ++ b) (i-1)

addSpaces [x] = [x]
addSpaces (x:xs) = [x] ++ " " ++ addSpaces xs
