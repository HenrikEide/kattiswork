n = input()

cups = [input() for _ in range(int(n))]
hehe = []
for l in cups:
    m = l.split()
    if m[0].isnumeric():
        r = int(m[0])/2
        kopp = [m[1], r]
    else:
        kopp = [m[0], int(m[1])]
    hehe.append(kopp)
hehe.sort(key=lambda x:x[1])
print("\n".join([x[0] for x in hehe]))