q=input()[::-1]
x=y=i=0
for k in q:
 if k in'13':x+=2**i
 if k in'23':y+=2**i
 i+=1
print(i,x,y)