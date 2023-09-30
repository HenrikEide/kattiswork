n,c,p=map(int,input().split())
t=0
for _ in range(n):
 if(a:=int(input()))>c+p:t+=1;p=c;c=a
print(t)