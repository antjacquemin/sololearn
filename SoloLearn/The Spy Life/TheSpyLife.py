cipher = input()
uncipher = cipher[::-1]
for char in uncipher:
    if char.isalpha() or char == " ":
        print(char, end="")