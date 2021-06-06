string = input()
parts = int(input())
print("-".join([string[i:i+parts] for i in range(0, len(string), parts)]))