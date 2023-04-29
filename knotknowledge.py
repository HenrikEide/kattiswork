knots = int(input())
knotsToKnow = input().split()
knotsKnown = input().split()
for i in knotsToKnow:
    if i not in knotsKnown:
        print(i)