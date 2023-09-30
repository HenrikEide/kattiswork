s,n=map(int,input().split())
p=list(range(1,n+1))
i=0
while len(p)>1:
 i=(i+s-1)%len(p);h=p[i]
 if type(h)==str:p.pop(i)
 elif h<0:p[i]=str(h);i+=1
 else:p[i]=-h;p.insert(i,-h)
print(abs(int(p[0])))