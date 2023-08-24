from collections import Counter
from functools import reduce

length = int(input())
arra = input().split()
array = list(map(int, arra))
array.sort()

def mode(array):
    count = 0
    mode = int
    for i in array:
        ccount = array.count(i)
        if ccount > count:
            count = ccount
            mode = i
    return mode

def mode2(array):
    teljar = dict(Counter(array))
    return teljar.index(max(teljar.values()))

def mode3(array):
    return reduce(lambda a,b: a if a[1] > b[1] or a[0] < b[0] else b, Counter(array).items())[0]

def mean(array):
    return round(sum(array)/len(array), 1)

def median(array):
    if len(array) % 2:
        return array[len(array)//2]
    else:
        return (array[len(array)//2]+array[(len(array)//2)-1])/2


print(mean(array))
print(median(array))
print(mode3(array))
