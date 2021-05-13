from math import sqrt, floor

def prime(number):
    if number < 2:
        return "Not prime"
    for i in range(2, floor(sqrt(number)) + 1):
        if number % i == 0:
            return "Not prime"
    return "Prime"

nbTests = int(input())
for _ in range(nbTests):
    print(prime(int(input())))