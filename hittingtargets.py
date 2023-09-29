m=int(input())
rects = []
circs = []
for _ in range(m):
 l = input().split()
 (circs if l[0]=='circle'else rects).append([int(x)for x in l[1:]])
n = int(input())
for _ in range(n):
 x,y = map(int,input().split())
 totHit = 0
 for c in circs:
  if (x-c[0])**2+(y-c[1])**2<=c[2]**2:
   totHit += 1
 for r in rects:
  if r[0]<=x<=r[2]and r[1]<=y<=r[3]:
   totHit += 1
 print(totHit)