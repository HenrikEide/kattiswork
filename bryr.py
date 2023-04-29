numVerts, numEdges = map(int, input().split())

weights = {}
edges = []
visited = []
vertices = {}

for i in range(numEdges):
    g = list(map(int, input().split()))
    weights[(g[0], g[1])] = g[2]
    if g[0] not in vertices:
        vertices[g[0]] = 10000
    if g[1] not in vertices:
        vertices[g[1]] = 10000
    if g[0] < g[1]:
        edges.append([g[0], g[1]])
    else:
        edges.append([g[1], g[0]])


print(vertices)
print(edges)
