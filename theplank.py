l=[1]+[0]*24
for i in range(22):
 if l[i]:
  l[i+1]+=l[i]
  l[i+2]+=l[i]
  l[i+3]+=l[i]
print(l[int(input())])