def finn_aktivitet(temperatur):
    if temperatur <= 12: 
        return "💻"
    if temperatur <= 17:
        return "⚽️"
    if temperatur <= 22:
        return "☀️"
    return "🏊‍♂️"


def finn_retning(x,y):
    ans = ""
    if y<0:
        ans += "SØR"
    elif y>0:
        ans += "NORD"
    if x>0:
        ans += "ØST"
    elif x<0:
        ans += "VEST"
    return ans


print(finn_retning(0,-1))