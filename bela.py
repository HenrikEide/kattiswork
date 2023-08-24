doms = {
    "A": 11,
    "K": 4,
    "Q": 3,
    "J": 20,
    "T": 10,
    "9": 14,
    "8": 0,
    "7": 0
}
ndoms = {
    "A": 11,
    "K": 4,
    "Q": 3,
    "J": 2,
    "T": 10,
    "9": 0,
    "8": 0,
    "7": 0
}
tot = 0
hands, domsuit = input().split()
for i in range(4*int(hands)):
    hand = input()
    if hand[1]==domsuit:
        tot += doms[hand[0]]
    else:
        tot += ndoms[hand[0]]
print(tot)