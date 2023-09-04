i=input
n=[i()for _ in[0]*int(i())]
for a,b,*c in[i().split()for _ in[0]*int(i())]:
 if a>'cut':n.remove(b)
 else:n[:n.index(c[0])]+=[b]
print(*n,sep='\n')