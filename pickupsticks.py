n,m=map(int,input().split())
s={x:y for x,y in[input().split()for _ in range(m)]}
for i in range(n+1):
    o=[str(i)]
    c=str(i)
    while 1:
        try:
            o+=[s[c]]
            c=s[c]
        except:
            break
    if len(o)==n:
        break
else:
    print('IMPOSSIBLE')
    exit()
print('\n'.join(o))