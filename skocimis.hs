main = interact $ show . (\[x,y,z] -> max (y-x) (z-y) -1) . map read . words
