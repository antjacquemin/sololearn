#!/bin/python3

import math
import os
import random
import re
import sys

# Complete the sockMerchant function below.
def sockMerchant(n, ar):
    socks = {}
    for sock in ar:
        if sock in socks:
            socks[sock] += 1
        else:
            socks[sock] = 1
    nbPairs = 0
    for sock in socks:
        nbPairs += socks[sock] // 2
    return nbPairs

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    n = int(input())

    ar = list(map(int, input().rstrip().split()))

    result = sockMerchant(n, ar)

    fptr.write(str(result) + '\n')

    fptr.close()
