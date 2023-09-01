while 1:
 try:x,y=map(int,input().split());print(*divmod(x,y),"/",y)
 except:exit()