from math import erf, sqrt

# Part 1 and 2
def normalCumul(x, mean, std):
    return 1/2 * (1 + erf((x-mean) / (std * sqrt(2))))

def normalCLT(x, n, mean, std):
    mu = n * mean
    sigma = sqrt(n) * std
    return normalCumul(x, mu, sigma)

x = int(input())
n = int(input())
mean = float(input())
std = float(input())

print(round(normalCLT(x, n, mean, std), 4))

# Part 3
n = int(input())
mean = float(input())
std = float(input())
interval = float(input())
z = float(input())

print(round(mean - (std / sqrt(n)) * z, 2))
print(round(mean + (std / sqrt(n)) * z, 2))