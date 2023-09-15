j=eval(("input().split()+"*3)[:-1])
j=[x[1]for x in sorted([(j[i],(i%3,i//3))for i in range(9)])]
d=0
for i in range(8):
 d+=(abs(j[i][0]-j[i+1][0])**2+abs(j[i][1]-j[i+1][1])**2)**0.5
print(d)