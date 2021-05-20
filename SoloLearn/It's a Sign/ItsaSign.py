def saveSign():
    for _ in range(4):
        label = input()
        if label[::-1] == label:
            return "Open"
    return "Trash"

print(saveSign())