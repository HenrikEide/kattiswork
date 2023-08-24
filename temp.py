## Custom
liste = ["MAT101", "INF100"]

stop = False

while not stop:
    x = input("Legge til fag 'l', fjerne fag 'f' eller stopp 'q': ")
    
    if x == 'l':
        fag = input("Fag som skal legges til: ")
        liste.append(fag)
    elif x == 'f':
        fag = input("Fag som skal fjernes: ")
        liste.remove(fag)
    else:
        print("Whoops, ikke gyldig input.")



navn = "Ola"

print("Hei", navn, "!") 
print("Hei " + navn + "!")
print(f"Hei {navn}!")
print("Hei {navn}!")

# Vi kan også skrive uttrykk i f-strings.
alder = 23

print(f"Hei {navn}! Du fyller 100 år om {100-alder} år.")

# Vi må ikke bare bruke f-strings sammen med print(). En streng med f foran er
# fremdeles en streng. Så vi kan for eksempel lagre den i en variabel.
hilsen = f"Hei {navn}!"

print(hilsen * 3)


# Nr 2. sammenligninger

tall_1 = 5
tall_2 = 9

print(tall_1 > tall_2)
print(f"{tall_1 > tall_2}")
print("tall_1 > tall_2 =", tall_1 > tall_2)

print(f"tall_1 > tall_2 = {tall_1 > tall_2}")



# Vi kan sammenligne strenger i alfabetisk rekkefølge.
navn_1 = "Alice"
navn_2 = "Albert"

print(f"navn_1 < navn_2 = {navn_1 < navn_2}")
print(navn_1 == navn_2)
print(navn_1 > navn_2)

# Vi kan lagre boolske verdier i variabler.
matches = navn_1 == "Bob"

print(f"matches = {matches}")



# Nr 3. in

# Vi kan sjekke om bokstaven 'a' finnes i noen ulike ord.
print(f"Bokstaven 'a' er med i ordet 'hei': {'a' in 'hei'}")
print(f"Bokstaven 'a' er med i ordet 'programmering': {'a' in 'programmering'}")
print(f"Bokstaven 'a' er med i ordet 'Anton': {'a' in 'Anton'}")
# Hvorfor blir det 'False' i den siste print-satsen?


# Nr 4. Boolske operatorer

print("Boolean operators")
print(True and True)
print(True and False)
print("--------")
print(True or False)
print(True or True)
print("--------")
print(not True)
print(not False)

print("Larger boolean expressions")

test_1 = (5 > 3) and ("a" < "c")
print(f"test_1 = {test_1}")

x = True
test_2 = (not x) and x
print(f"test_2 = {test_2}")

sky_is_green = False
grass_is_green = True
test_3 = ((not sky_is_green) and (not grass_is_green)) == (
    not (sky_is_green or grass_is_green)
)
print(f"test_3 = {test_3}")


print("Confuse yourself...")
true = False
false = True
# decide what the output will be before running!
test_4 = true and True
print(test_4)
test_5 = test_4 or false
print(test_5)




# Nr 5. If-setninger

a = 5
b = 9

#############
# the diagram above shows this control flow visually
if a < b:
    print("Smaller!")

print('AAA')

#############

if a > b:
    print("Bigger!")

print('BBB')

#############

if a == b:
    print("The same!")
    print("More than one line can be here:")
    print("as")
    print("many")
    print("as")
    print("you")
    print("like.")

print('CCC')

#############

if a > 5 and b < 10:
    print("A is above 5 and B is less than 10")

#############

print("Done comparing numbers\n\n\n")

print("How not to not write bad if-conditions:")

if (a < b) == True:  # Do *not* write comparisons like this!
    print('Writing "if (a<b) == True" is doing double work!')
    print('"a < b" is already a boolean by itself.')
    print('Writing "if True==True:" doesn\'t make it more true')

if not (a >= b) == False:  # nooooo! use this instead: if a >= b:
    print("An if statement with many negatives is not readable")

# We can save booleans in variables.
a_smaller_than_b = a < b  # What value does this variable have?

# We can then use them in if-statements.
if a_smaller_than_b:
    print("'a' is smaller than 'b'.")



# nr 6. If-elif-else

tekst = "oppvaskmaskin"

if "a" in tekst:
    print("We have an a")
else:
    print("We don't have an a")

if "e" in tekst:
    print(f"There is an e in {tekst}")
elif "vk" in tekst:
    print("Characters 'vk' are in the text")
elif "v" in tekst and "k" in tekst:
    print("Characters 'v' and 'k' are in the text")
elif "opp" in tekst:
    print('The text contains "opp"')
else:
    print("None of the options matched")

print("==========")

if "opp" in tekst:
    print('The text contains "opp"')


