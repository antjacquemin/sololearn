#!/bin/python3

import math
import os
import random
import re
import sys

#
# Complete the 'countingValleys' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. INTEGER steps
#  2. STRING path
#

def countingValleys(steps, path):
    # Write your code here
    stack = []
    nbValleys = 0
    for step in path:
        if step == "U":
            if stack and stack[-1] == "D":
                stack.pop()
            else:
                stack.append(step)
        else:
            if stack:
                if stack[-1] == "U":
                    stack.pop()
                else:
                    stack.append(step)
            else:
                nbValleys += 1    
                stack.append(step)
    return nbValleys            

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    steps = int(input().strip())

    path = input()

    result = countingValleys(steps, path)

    fptr.write(str(result) + '\n')

    fptr.close()
