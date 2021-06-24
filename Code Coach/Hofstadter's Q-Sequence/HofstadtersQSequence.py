from sys import setrecursionlimit
from functools import lru_cache

setrecursionlimit(1000000)

@lru_cache(maxsize=None)
def q(n):
    if n < 3:
        return 1
    else:
        return q(n - q(n - 1)) + q(n - q(n - 2))

print(q(int(input())))