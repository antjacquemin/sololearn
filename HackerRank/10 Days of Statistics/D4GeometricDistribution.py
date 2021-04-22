num, den = map(int, input().split())
n = int(input())
q = num / den

# Part 1
proba = (1-q)**(n - 1) * q

# Part 2
proba = 1-((1-q)**n)

print(round(proba, 3))