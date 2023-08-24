n = int(input())
c = list(map(int, input().split()))
added = set()
tot = 0
for i in range(n):
    cheapest = 1000000
    cj = -1
    for j in range(n):
        if i != j and c[j] < cheapest and (i, j) not in added and (j, i) not in added:
                cheapest = c[j]
                cj = j
    #if not (visited[cj] and visited[i]):
    tot += c[cj] + c[i]
    print("oi", cj, i)
    added.add((cj, i))
    added.add((i, cj))
print(tot)