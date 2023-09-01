x=int(input())
l={}
for a,n in [input().split()for _ in range(x)]:
    out=n
    if a=='entry':
        out+=' entered'
        if l.get(n,0):out+=' (ANOMALY)'
        l[n]=1
    if a=='exit':
        out+=' exited'
        if not l.get(n,0):out+=' (ANOMALY)'
        l[n]=0
    print(out)