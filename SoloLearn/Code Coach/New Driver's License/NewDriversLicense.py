from math import ceil

nom = input()
agents = int(input())
customers = input().split()
customers.append(nom)
customers.sort()
pos = customers.index(nom) + 1
print(ceil(pos / agents) * 20)