from math import factorial
cases = int(input())

for i in range(cases):
    num = int(input())
    print(str(factorial(num))[-1])