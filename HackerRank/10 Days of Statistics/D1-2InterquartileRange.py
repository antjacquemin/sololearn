#!/bin/python3

import math
import os
import random
import re
import sys

#
# Complete the 'interQuartile' function below.
#
# The function accepts following parameters:
#  1. INTEGER_ARRAY values
#  2. INTEGER_ARRAY freqs
#

def median(arr):
    n = len(arr)
    middle = n // 2
    if n % 2 == 0:
        return middle, (arr[middle - 1] + arr[middle]) / 2
    else:
        return middle, arr[middle]
    
def quartiles(arr):
    # Write your code here
    arr.sort()
    middle, q2 = median(arr)
    if len(arr) % 2 == 0:
        return [median(arr[:middle])[1], q2, median(arr[middle:])[1]]
    else:
        return [median(arr[:middle])[1], q2, median(arr[middle + 1:])[1]]

def interQuartile(values, freqs):
    # Print your answer to 1 decimal place within this function
    liste = []
    for i in range(len(values)):
        liste += [values[i]] * freqs[i]
    q1, _, q3 = quartiles(liste)
    print(round(q3 - q1 + 0.0, 1))
    
if __name__ == '__main__':
    n = int(input().strip())

    val = list(map(int, input().rstrip().split()))

    freq = list(map(int, input().rstrip().split()))

    interQuartile(val, freq)
