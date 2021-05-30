snacks = input().split()
total = 0
for snack in snacks:
    if snack == "Lettuce":
        total += 5
    elif snack == "Carrot":
        total += 4
    elif snack == "Mango":
        total += 9
if total > 9:
    print("Come on Down!")
else:
    print("Time to wait")