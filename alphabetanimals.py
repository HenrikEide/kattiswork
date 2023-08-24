
prev = input().strip()[-1]
numAnimals = int(input().strip())

animals = {}
options = []
for i in range(numAnimals):
    animal = input().strip()
    animals[animal[0]] = animal
    if animal[0]==prev:
        options.append(animal)
print(animals.get("c"))
for a in options:
    if list(animals.keys()).count(a[-1])==1:
        print(a+"!")
        exit()
if options:
    print(options[0])
else:
    print("?")


