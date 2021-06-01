prices = map(int, input().split(","))
total = 0.0
for price in prices:
    total += price
    if price < 20:
        total += 0.07 * price
print(round(total, 2))