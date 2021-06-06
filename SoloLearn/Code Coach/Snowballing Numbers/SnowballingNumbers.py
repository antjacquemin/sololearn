def snowball(n):
    total = 0
    for _ in range(n):
        val = int(input())
        if val <= total:
            return "false"
        total += val
    return "true"

n = int(input())
print(snowball(n))