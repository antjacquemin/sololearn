carrots = int(input())
boxes = int(input())
remainder = carrots % boxes
missing = 7 - remainder
if missing <= 0:
    print("Cake Time")
else:
    print(f"I need to buy {missing} more")