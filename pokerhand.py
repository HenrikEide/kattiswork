cars = list(map(lambda x:x[0], input().split()))
countlist = list(map(lambda x:cars.count(x), set(cars)))
print(max(countlist))