main = interact (show . slurp . words)

slurp :: [String] -> Int
slurp (x:y:z) =
    if read x + read y < read (head z) then 0 else
    let xy = floor $ (read x + read y) / read (head z)
        rest = (read x + read y) `mod` read (head z)
    in xy + slurp (show xy : show rest : z)
