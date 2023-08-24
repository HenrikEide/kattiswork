main=do 
    n<-readLn;m<-readLn;let(q,r)=divMod m n
    let rs=replicate r(q+1)++replicate(n-r)q
    putStr$unlines$map(`replicate`'*')rs