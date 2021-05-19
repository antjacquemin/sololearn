ordre = input().replace("x", "").split("$")

if ordre[0] != "" and ordre[0][-1] == "T" or ordre[1] != "" and ordre[1][0] == "T":
    print("ALARM")
else:
    print("quiet")