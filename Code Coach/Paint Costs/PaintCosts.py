from math import ceil

colors = float(input())
total = 40.0 +5.0 * colors
tax = total / 10
print(ceil(total + tax))