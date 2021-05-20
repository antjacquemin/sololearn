space = input()
pos1 = space.index("P")
pos2 = space.index("P", pos1 + 1)
print(pos2 // 6 - pos1 // 6 + abs(pos1 % 6 - pos2 % 6))