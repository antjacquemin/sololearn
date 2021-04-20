#!/bin/python3

import math
import os
import random
import re
import sys

#
# Complete the 'quartiles' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts INTEGER_ARRAY arr as parameter.
#

def median(arr):
    n = len(arr)
    middle = n // 2
    if n % 2 == 0:
        return middle, int((arr[middle - 1] + arr[middle]) / 2)
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

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    n = int(input().strip())

    data = list(map(int, input().rstrip().split()))

    res = quartiles(data)

    fptr.write('\n'.join(map(str, res)))
    fptr.write('\n')

    fptr.close()
