hexVal = "#"
for _ in range(3):
    val = int(input())
    hexVal += hex(val // 16)[2:]
    hexVal += hex(val % 16)[2:]
print(hexVal)