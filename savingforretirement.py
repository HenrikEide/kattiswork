nums = list(map(int, input().split()))

mons = nums[2]*(nums[1]-nums[0])
print(nums[3]+(mons//nums[4]+1))