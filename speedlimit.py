while True:
    cases = int(input())
    if cases==-1:
        break
    cumul = 0
    tot = 0
    for i in range(cases):
        nums = list(map(int, input().split()))
        tot += nums[0] * (nums[1]-cumul)
        cumul += nums[1]
    print(f"{tot} miles")