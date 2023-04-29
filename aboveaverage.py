cases = int(input())

for i in range(cases):
    studs = list(map(int, input().split()))
    length = studs[0]
    studs = studs[1:]

    avg = sum(studs)/length
    aboveAvg = list(filter(lambda x: x>avg, studs))
    print(f"{(len(aboveAvg)/length)*100:.3f}%")