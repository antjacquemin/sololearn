from re import match

if match(r"^[0-9]{5}$", input()):
    print("true")
else:
    print("false")