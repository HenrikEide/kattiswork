import numpy as np
def move(instructions):
    dirs = [(0, 1), (1, 0), (0, -1), (-1, 0)]
    x, y = 0, 0
    dir = 0
    for instruction in instructions.split('\n'):
        if instruction == "FERDIG":
            return (x,y)
        (inst, amount) = instruction.split()
        amount = int(amount)
        if (inst == "VENSTRE"):
            dir = (dir - 1) % 4
        else:
            dir = (dir + 1) % 4
        
        x += dirs[dir][0] * amount
        y += dirs[dir][1] * amount
            

print(move("""VENSTRE 500
HØYRE 200
VENSTRE 100
VENSTRE 50
HØYRE 800
HØYRE 800
HØYRE 1000
HØYRE 850
FERDIG"""))

import itertools

def kekistan(thestring):
    fixed=thestring.split("\n")
    npfixed = np.array(fixed)
    whoops = npfixed.T
    whoops = whoops.tolist()
    for whoop, i in enumerate(whoops):
        whoop = whoop.shift(i)
    print(whoops)

kekistan("""_LANVPVKFEEFS_DÅ_____N_ 
4_UN_EOEKTTR_E_RN_____N 
3__BGHVGRS___KR_ÅE_____ 
V_H_BEEIRILTI_LU_PS____
SAAI_MGNNIFIO__ØM_EK___ 
SLNLP_AITGFIM_M_R__RI__""")