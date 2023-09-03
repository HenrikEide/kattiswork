x=input()
while len(x)>1:x=str(eval('*'.join(x.remove('0'))))
print(x)