n,x = map(int,input().split())
print("Jebb" if sum([int(input()) for _ in range(n)])>=x else "Neibb")