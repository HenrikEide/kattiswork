def getinput():
    return [int(x) for x in input().split()]

a,b,c = [getinput() for _ in range(3)]
points = [a,b,c]

def getVector(a,b):
    return [a[0] - b[0], a[1] - b[1]]

def isEqualVect(a,b):
    return abs((a[0]*a[0] + a[1]*a[1])) == abs((b[0]*b[0] + b[1]*b[1]))

mid = []
for i in range(3):
    if isEqualVect(getVector(points[i],points[i-1]), getVector(points[i],points[i-2])):
        mid = points[i]
        points.remove(points[i])
        break

midb = getVector(points[0], mid)
d = [points[1][0] + midb[0], points[1][1] + midb[1]]

print(f"{d[0]} {d[1]}")

