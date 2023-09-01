x,y,a,b=map(eval,input().split())
print(abs(x-a)*abs(y-b))

# print(lambda x1,y1,a,b:abs(x1-a)*abs(y1-b)(*map(float,input().split())))
print(lambda x,y,a,b:abs(x-a)*abs(y-b)(*map(float,input().split())))