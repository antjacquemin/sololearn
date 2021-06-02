for char in input():
    if char.isalnum() or char == " ":
        print(char, end="")

""" 
import re
print(re.sub(r"[^a-zA-Z0-9 ]", "", input()))
"""