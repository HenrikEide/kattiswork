import sys
input()
print("\n".join(map(lambda y:f"{(y[0]-1)*60/y[1]:.4f} {(y[0])*60/y[1]:.4f} {(y[0]+1)*60/y[1]:.4f}", [list((int(x.split()[0]), float(x.split()[1]))) for x in sys.stdin])))