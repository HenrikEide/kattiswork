num = int(input())
nums = list(map(int, input().split()))
uniq = []
for i in nums:
    if nums.count(i) == 1:
        uniq.append(i)
if not uniq:
    print("none")
else:
    print(nums.index(max(uniq))+1)