#!/bin/python3

S = input()
try:
    print(int(S))
except ValueError:
    print("Bad String")
