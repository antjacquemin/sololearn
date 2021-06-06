score = int(input())
tickets = score // 12
cost = int(input())
if tickets < cost:
    print("Try again")
else:
    print("Buy it!")