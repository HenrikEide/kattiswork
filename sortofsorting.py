while n:=int(input()):print(*sorted([*map(input,['']*n)],key=lambda x:x[:2]),sep='\n')