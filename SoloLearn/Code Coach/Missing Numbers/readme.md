# Missing Numbers
You are given a list of whole numbers in ascending order. You need to find which numbers are missing in the sequence.
## Task
Create a program that takes in a list of numbers and outputs the missing numbers in the sequence separated by spaces.
### Input Format
The first input denotes the length of the list (N). The next N lines contain the list elements as integers.
### Output Format
A string containing a space-separated list of the missing numbers.
### Sample Input
```
5
2
4
5
7
8
```
### Sample Output
```
3 6
```
### Explanation
The input list is missing the numbers 3 and 6.
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
N = int(input())
missing = []
b = int(input())
for _ in range(N - 1):
    a = b
    b = int(input())
    missing = missing + [str(i) for i in range(a + 1, b)]
print(" ".join(missing))
```
### Ruby
```ruby
```
### Swift
```swift
```