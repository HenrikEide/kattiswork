l, x = [int(i) for i in input().split()]
n = m = 0
for a, b in [input().split() for _ in range(x)]:
    s, x = a, int(b)
    if s == "enter":
        if n + x <= l:
            n += x
        else:
            m += 1
    else:
        n -= x
print(m)
