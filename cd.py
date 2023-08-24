import sys
def bigFucko(n):
    jack = set()
    jill = set()

    for i in range(int(n[0])):
        jack.add(int(sys.stdin.readline()))

    for i in range(int(n[1])):
        jill.add(int(sys.stdin.readline()))
    
    print(len(jack&jill))

while True:
    n = input().split()
    if n[0] != "0" and n[0] != "0":
        bigFucko(n)
    else:
        break

