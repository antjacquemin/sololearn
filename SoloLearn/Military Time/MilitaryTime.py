horaire = input().split()
temps = horaire[1]
heure = horaire[0].split(":")
heures = int(heure[0]) % 12
minutes = int(heure[1])
if temps == "PM":
    heures += 12
heures = (str(heures)).rjust(2, "0")
minutes = (str(minutes)).rjust(2, "0")
print(heures + ":" + minutes)