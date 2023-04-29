from functools import reduce
nums = int(input())
tot = 0
for i in range(nums):
    tot += reduce(lambda x,y:x*y, list(map(float, input().split())), 1)
print(tot)