for _ in range(6):
    number = int(input())
    if number % 3 == 0:
        print("Pop", end=" ")
    elif number % 2 == 0:
        print("Crackle", end=" ")
    else:
        print("Snap", end=" ")