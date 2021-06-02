# Extra-Terrestrials
You meet a group of aliens, and their language is just like English except that they say every word backwards.  
How will you learn to communicate with them?
## Task
Take a word in English that you would like to say, and turn it into language that these aliens will understand.
### Input Format
A string of a word in English.
### Output Format
A string of the reversed word that represents the original word translated into alien language.
### Sample Input
```
howdy
```
### Sample Output
```
ydwoh
```
### Explanation
If you flip howdy backwards you get ydwoh.
## Solutions
### C
```c
#include <stdio.h>
#include <string.h>

int main() {
    char s[100];
    scanf("%s", s);
    int length = strlen(s);
    char ns[length];
    for (int i=0; i<=length; i++) {
        ns[i] = s[length - i - 1];
    }
    printf("%s", ns);
    return 0;
} 
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
print(input()[::-1])
```
### Ruby
```ruby
```
### Swift
```swift
```