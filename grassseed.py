import sys;cost = float(input());input();print(sum(list(map(lambda x:cost*x[0]*x[1],  [list(map(float, x.split())) for x in sys.stdin]))))