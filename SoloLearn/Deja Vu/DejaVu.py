mot = input()
lettres = set()
dejaVu = False
for char in mot:
    if char in lettres:
        dejaVu = True
    else:
        lettres.add(char)
if dejaVu:
    print("Deja Vu")
else:
    print("Unique")