from math import factorial

def comb(n, x):
    return factorial(n) / (factorial(x) * factorial(n-x))

def binom(x, n, p):
    return comb(n, x) * p**x * (1-p)**(n-x)

def binomInterval(x1, x2, n, p):
    return sum([binom(i, n, p) for i in range(x1, x2 + 1)])

# Part 1
p, q = map(float, input().split())
proba = p / (p + q)
print(round(binomInterval(3, 6, 6, proba), 3))

# Part 2
p, n = map(int, input().split())
proba = p / 100
print(round(binomInterval(0, 2, n, proba), 3))
print(round(binomInterval(2, n, n, proba), 3))