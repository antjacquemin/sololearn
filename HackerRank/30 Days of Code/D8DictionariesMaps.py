n = int(input())

phonebook = {name: number for name, number in (input().split() for _ in range(n))}
firstname = input()

while firstname:
    if firstname in phonebook:
        print(f"{firstname}={phonebook[firstname]}")
    else:
        print("Not found")
    try:
        firstname = input()
    except EOFError:
        break