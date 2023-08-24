
allBois = []

for i in range(17):
    if i % 2 != 0:
        row = list(map(lambda x: x[1], input()[1:-1].split("|")))
        allBois.append(row)

colNr = ["a", "b", "c", "d", "e", "f", "g", "h"]
pieces = ["K", "Q", "R", "B", "N", "P"]
white = "White: "
black = "Black: "
for ind,row in enumerate(allBois):
    for i,cell in enumerate(row):
        if cell in pieces:
            if cell != "P":
                white += f"{cell}{colNr[i]}{8-ind},"
            else:
                white += f"{colNr[i]}{8-ind},"
        elif cell not in [".", ":"]:
            if cell != "p":
                black += f"{cell.upper()}{colNr[i]}{8-ind},"
            else:
                black += f"{colNr[i]}{8-ind},"

print(white[:-1])
print(black[:-1])
