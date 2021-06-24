orders = input().split()
total = 0.0
for order in orders:
    if order == "Nachos" or order == "Pizza":
        total += 6.0
    elif order == "Cheeseburger":
        total += 10.0
    elif order == "Water":
        total += 4.0
    else:
        total += 5.0
tax = total * 7 /100
print(total + tax)