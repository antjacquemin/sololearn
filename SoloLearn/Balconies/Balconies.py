h1, l1 = map(int, input().split(","))
h2, l2 = map(int, input().split(","))
print("Apartment ", end="")
if h1 * l1 < h2 * l2:
    print("B")
else:
    print("A")