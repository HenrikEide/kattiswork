from functools import reduce
nums = list(map(int, input().split()))
p = sum(nums)/2
print(reduce(lambda x,y:x*y, list(map(lambda x:p-x, nums)))**0.5)