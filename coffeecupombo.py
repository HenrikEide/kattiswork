input()
s=input()
print(int(s[0])+(int(s[0]) or sum(map(int,s[:2])))+len([i for i in range(len(s))if'1'in s[i-2:i+1]]))