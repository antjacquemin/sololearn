message = input()
for word in message.lower().split():
    for char in word:
        print(chr(ord("a") + ord("z") - ord(char)), end="")
    print(" ", end="")