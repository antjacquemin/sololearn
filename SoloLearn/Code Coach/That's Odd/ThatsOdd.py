n = int(input())
total = 0
for i in range(n):
    number = int(input())
    if (number % 2 == 0):
        total += number
print(total)