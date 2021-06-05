from math import ceil
from string import punctuation

essay = input()
filteredessay = essay.translate(essay.maketrans("", "", punctuation))
#filteredessay = "".join(filter(lambda x: x not in punctuation, essay))
words = filteredessay.split()
average = sum(len(word) for word in words) / len(words)
#average = sum(map(len, words)) / len(words)
print(ceil(average))