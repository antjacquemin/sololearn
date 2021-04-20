# Enter your code here. Read input from STDIN. Print output to STDOUT
N = int(input())
X = list(map(int, input().split()))
print(round(sum(X) / N, 1))
X.sort()
mean = 0
if N % 2 == 0:
    mean = (X[N // 2] + X[N // 2 - 1]) / 2
else:
    mean = X[(N - 1) // 2]
print(mean)
print(max(X, key=X.count))