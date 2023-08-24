main = interact (unlines . map nasty . tail . lines)
nasty xs = 
    let (x:y:z:_) = map read (words xs)
    in if y-z > x then "advertise"
    else if y-z < x then "do not advertise"
    else "does not matter"
