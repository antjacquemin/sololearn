#!/bin/python3

import math
import os
import random
import re
import sys

if __name__ == '__main__':
    n = int(input().strip())

    a = list(map(int, input().rstrip().split()))
    
    totalNumberOfSwaps = 0
    for i in range(n):
        #Track number of elements swapped during a single array traversal
        numberOfSwaps = 0
        
        for j in range(n - 1):
            #Swap adjacent elements if they are in decreasing order
            if (a[j] > a[j + 1]): 
                a[j], a[j + 1] = a[j+1], a[j]
                numberOfSwaps += 1
        totalNumberOfSwaps += numberOfSwaps
        #If no elements were swapped during a traversal, array is sorted
        if (numberOfSwaps == 0):
            break
        
    print("Array is sorted in", totalNumberOfSwaps, "swaps.") 
    print("First Element:", a[0]) 
    print("Last Element:", a[-1]) 