width = int(input())
nPieces = int(input())
tot = 0
for i in range(nPieces):
    piece = list(map(int, input().split()))
    tot += piece[0]*piece[1]
print(tot//width)