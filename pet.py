winner, points = 0,0
for i in range(1,6):
    raw = input().split()
    score = sum([int(x) for x in raw])
    if score > points:
        points = score
        winner = i
print(winner, points)