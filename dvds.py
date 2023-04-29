cases = int(input())

for i in range(cases):
    input()
    case = list(map(int, input().split()))

    n = 0; i = 1
    for fst in case:
        if fst != i:
            n += 1
        else:
            i += 1

    print(n)

