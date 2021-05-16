#!/bin/python3
import re

if __name__ == '__main__':
    
    validNames = []
    N = int(input().strip())
    for N_itr in range(N):
        first_multiple_input = input().rstrip().split()
        firstName = first_multiple_input[0]
        emailID = first_multiple_input[1]
        if re.match("^.*@gmail\.com$", emailID):
            validNames.append(firstName)
    for firstName in sorted(validNames):
        print(firstName)
