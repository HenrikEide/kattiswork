grid = [['.', '.', '.', '.', '.', '.'],
      ['.', 'O', 'O', '.', '.', '.'],
      ['O', 'O', 'O', 'O', '.', '.'],
      ['O', 'O', 'O', 'O', 'O', '.'],
      ['.', 'O', 'O', 'O', 'O', 'O'],
      ['O', 'O', 'O', 'O', 'O', '.'],
      ['O', 'O', 'O', 'O', '.', '.'],
      ['.', 'O', 'O', '.', '.', '.'],
      ['.', '.', '.', '.', '.', '.']]

# for x in range(len(grid[0])):
#     for y in grid:
#         print(y[x], end="")
#     print()


# heart = ""
# for y in range(6):
#     for x in range(9):
#         heart += grid[x][y]
#     heart += "\n"

# print(heart)


# a tuple with three elements
# a = (1,'b',3)

# a tuple with one element (notice the comma)
# b = (1,)

# print("Two tuples:")
# print(f"a = {a}\nb = {b}\n")

# print("\nTuple unpacking:")

# x, y, z = a
# print(f"x = {x}\ny = {y}\nz = {z}\n")

# print("Lists of tuples:")
# here is a list of tuples
# list_of_tuples = [(7, 'a'), (12, 'x'), (3, 'B')]

# we can unpack them automatically while going through the list
# for first, second in list_of_tuples:
#     print("Number", first, "belongs to", second)


# for rad in grid:
#       for index in rad:
#             print(index, end='')
#       print()

# print("\nExample print, this works!")

# i = []
# i.append(["yeah", 4])
# print(i)

names = ['Jakob', 'Emma', 'Ola', 'Sondre', 'Maia', 'Emilie', 'Noa']

newNames = [[x[::-1], len(x)] for a,x in enumerate(names)]
print(newNames)

def rev(xs):
    return [xs[::-1],len(xs)]

revNames = list(map(rev, names))
print(revNames)

cat = ('aloof', 'meow', 'tuna')

dog = ('friendly', 'woof', 'sausage')

pers = list(zip(dog, cat))[0]
print([pers[0], pers[1]])

x = [1,1,1,1,2,2,3,3,3,3,4,4,4,5,5]
x = list(set(x))
print(x)

print()

i = []
def return_change(payment, price):
    diff = payment - price
    coins = [1, 5, 10, 20]
    for c in coins:
        while diff >= 20:
            i.append(20)
            diff -= 20
        while diff >= 10:
            i.append(10)
            diff -= 10
        while diff >= 5:
            i.append(5)
            diff -= 5
        while diff >= 1:
            i.append(1)
            diff -= 1  
        return(i)

print(return_change(30, 13))

