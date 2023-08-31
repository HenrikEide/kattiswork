l, x = map(int, input().split())
n = m = 0
for a, x in [input().split() for _ in range(x)]:
    x = int(x)
    if a[0] == "e":
        m += n + x > l
        n += x * (n + x <= l)
    else:
        n -= x
print(m)
