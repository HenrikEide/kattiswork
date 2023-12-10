main=interact$g.read
r=replicate
g n=f n++concat(r n$'|':r n ' '++"|\n")++f n
f n='+':r n '-'++"+\n"