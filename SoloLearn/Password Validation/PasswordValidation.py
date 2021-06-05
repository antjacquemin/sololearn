password = input()
numbers = 0
symbols = 0
if len(password) > 6:
    for char in password:
        if char.isdigit():
            numbers += 1
        elif char in "!@#$%&*":
            symbols += 1
    if numbers > 1 and symbols > 1:
        print("Strong")
    else:
        print("Weak")
else:
    print("Weak")    

"""
numbers = len([char for char in password if char.isdigit()])
symbols = len([char for char in password if char in "!@#$%&*"])
if len(password) > 6 and numbers > 1 and symbols > 1:
    print("Strong")
else:
    print("Weak")
"""