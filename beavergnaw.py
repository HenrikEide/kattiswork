import math
p=math.pi
while 1:
 d,v=map(int,input().split())
 if d<1:break
 print(((p*((d/2)**2)*d-v-p*((d/2)**2)*(d/3))*1.5/(2*p))**(1/3)*2)