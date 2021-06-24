sounds = input.split()
animals = ""
for sound in sounds:
    if sound == "Grr":
        animals += "Lion "
    elif sound == "Rawr":
        animals += "Tiger "
    elif sound == "Ssss":
        animals += "Snake "
    elif sound == "Chirp":
        animals += "Bird "
print(animals[:-1])