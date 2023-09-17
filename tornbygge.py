input()
l=list(map(int,input().split()))
print(1+sum(x<y for x,y in zip(l,l[1:])))