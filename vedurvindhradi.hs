b=[([0..2],"Logn"),([3..15],"Andvari"),([16..33],"Kul"),([34..54],"Gola"),([55..79],"Stinningsgola"),([80..107],"Kaldi"),([108..138],"Stinningskaldi"),([139..171],"Allhvass vindur"),([172..207],"Hvassvidri"),([208..244],"Stormur"),([245..284],"Rok"),([285..326],"Ofsavedur"),([327..2000],"Farvidri")]
main = do
  wind <- getLine
  let w = read wind :: Float
  putStrLn $ snd $ head $ filter (\(x,y) -> w*10 `elem` x) b