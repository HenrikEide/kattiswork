def digitSum(x):
    return sum([int(y) for y in str(x)])
l, d, x = int(input()), int(input()), int(input())
for i in range(l,d+1):
    if digitSum(i)==x:
        print(i)
        break
for i in range(d,l-1,-1):
    if digitSum(i)==x:
        print(i)
        exit()