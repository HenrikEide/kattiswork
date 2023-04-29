from functools import reduce
nums = int(input())

array = []
for i in range(nums):
    array.append(list(map(int, input().split())))

sol = []
for i in range(len(array)):
    sol.append(reduce(lambda x,y: x|y, array[i], 0))

kek = ""
for i in sol:
    kek += str(i) + " "

print(kek.strip())