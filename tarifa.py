money = int(input())
lines = int(input())
tot = money*(lines+1)
for i in range(lines):
    tot -= int(input())
print(tot)