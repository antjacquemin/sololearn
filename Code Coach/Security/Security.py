order = input().replace("x", "").split("$")

if order[0] != "" and order[0][-1] == "T" or order[1] != "" and order[1][0] == "T":
    print("ALARM")
else:
    print("quiet")