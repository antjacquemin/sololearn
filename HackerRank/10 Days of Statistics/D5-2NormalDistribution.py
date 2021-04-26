from math import erf, sqrt

def normalCumul(x, mean, std):
    return 1/2 * (1 + erf((x-mean) / (std * sqrt(2))))

def normalCumulInterval(x1, x2, mean, std):
    return normalCumul(x2, mean, std) - normalCumul(x1, mean, std)

# Part 1
mean, std = map(float, input().split()) 
val = float(input())
int1, int2 = map(float, input().split())
print(round(normalCumul(val, mean, std), 3))
print(round(normalCumulInterval(int1, int2, mean, std), 3))

# Part 2
mean, std = map(float, input().split()) 
val1 = float(input())
val2 = float(input())
print(round((1 - normalCumul(val1, mean, std)) * 100, 2))
print(round((1 - normalCumul(val2, mean, std)) * 100, 2))
print(round(normalCumul(val2, mean, std) * 100, 2))