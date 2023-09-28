main = do
    (a:b:_) <- fmap splitOnPipe getLine
    (x:y:_) <- fmap splitOnPipe getLine
    putStr $ a++x++" "++b++y

splitOnPipe :: String -> [String]
splitOnPipe s = [takeWhile (/= '|') s, tail . dropWhile (/= '|') $ s]