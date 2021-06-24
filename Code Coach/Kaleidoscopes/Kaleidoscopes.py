kaleidoscopes = int(input())
cost = 5 * kaleidoscopes
if (kaleidoscopes > 1):
    cost *= 0.9
cost *= 1.07
print(round(cost, 2))