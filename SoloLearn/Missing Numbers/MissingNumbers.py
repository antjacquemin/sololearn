N = int(input())
missing = []
b = int(input())
for _ in range(N - 1):
    a = b
    b = int(input())
    missing = missing + [str(i) for i in range(a + 1, b)]
print(" ".join(missing))