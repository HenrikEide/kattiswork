n=int(input())
g=[input()for _ in range(n)]
f=lambda x:x.count('W')==x.count('B')
h=lambda x:not any(x[i]==x[i+1]==x[i+2]for i in range(len(x)-2))
print((all([f(x)for x in g+list(zip(*g))])and all([h(x)for x in g+list(zip(*g))]))*1)