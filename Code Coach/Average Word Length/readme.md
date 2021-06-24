# Average Word Length
You are in a college level English class, your professor wants you to write an essay, but you need to find out the average length of all the words you use. It is up to you to figure out how long each word is and to average it out.
## Task
Takes in a string, figure out the average length of all the words and return a number representing the average length. Remove all punctuation. Round up to the nearest whole number.
### Input Format
A string containing multiple words.
### Output Format
A number representing the average length of each word, rounded up to the nearest whole number.
### Sample Input
```
this phrase has multiple words
```
### Sample Output
```
6
```
### Explanation
The string in question has five words with a total of 26 letters (spaces do not count). The average word length is **5.20** letters, rounding it up to the nearest whole numbers results in **6**.
## Solutions
### C
```c
```
### C++
```cpp
```
### C#
```cs
```
### Java
```java
```
### Python
```python
from math import ceil
from string import punctuation

essay = input()
filteredessay = essay.translate(essay.maketrans("", "", punctuation))
words = filteredessay.split()
average = sum(len(word) for word in words) / len(words)
print(ceil(average))
```
```python
from math import ceil
from string import punctuation

essay = input()
filteredessay = "".join(filter(lambda x: x not in punctuation, essay))
words = filteredessay.split()
average = sum(map(len, words)) / len(words)
print(ceil(average))
```
### Ruby
```ruby
```
### Swift
```swift
```