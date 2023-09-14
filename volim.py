i=input
p=int(i())
n=int(i())
t=0
while 1:
 a,b=i().split();t+=int(a)
 if t>210:break
 p+=b>'P'
print(p%8 or 8)