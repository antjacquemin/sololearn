# That's Odd...
You want to take a list of numbers and find the sum of all of the even numbers in the list. Ignore any odd numbers.
## Task
Find the sum of all even integers in a list of numbers.
### Input Format
The first input denotes the length of the list (**N**). The next **N** lines contain the list elements as integers.
### Output Format
An integer that represents the sum of only the even numbers in the list.
### Sample Input
```
9
1
2
3
4
5
6
7
8
9
```
### Sample Output
```
20
```
### Explanation
If you add together 2, 4, 6, and 8 from the list, you get a sum of 20.
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
n = int(input())
total = 0
for i in range(n):
    number = int(input())
    if (number % 2 == 0):
        total += number
print(total)
```
### Ruby
```ruby
```
### Swift
```swift
```