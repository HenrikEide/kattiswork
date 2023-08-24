string = input()
smileys = [":)", ";)", ":-)", ";-)"]
for i in range(len(string[:-1])):
    if len(string[i:])>2 and string[i:i+3] in smileys or string[i:i+2] in smileys:
        print(i)