main = interact (show . solve)
solve [] = 0
solve [_] = 0
solve [_,_] = 0 
solve (x:y:z:xs) = let
    p = if x == 'P' then 0 else 1
    e = if y == 'E' then 0 else 1
    r = if z == 'R' then 0 else 1
    in p+e+r + solve xs