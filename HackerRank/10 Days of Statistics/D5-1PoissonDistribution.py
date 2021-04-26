# Part 1
from math import exp, factorial

def poisson(k, mean):
    return mean**k * exp(-mean) / factorial(k)

x = float(input())
p = int(input())
print(round(poisson(p, x), 3))

# Part 2
meanA, meanB = map(float, input().split())
expectedA = 160 + 40 * (meanA + meanA**2)
expectedB = 128 + 40 * (meanB + meanB**2)
print(round(expectedA, 3))
print(round(expectedB, 3))