# Guard Flamingos
You decide to add a pink flamingo lawn ornament every 2 feet around the perimeter of your yard. How many flamingos do you need to purchase?
## Task
Given the length and width of your rectangular yard, determine how many flamingos your should buy to put one every 2 feet along the edges of your yard.
### Input Format
Two integer values that represent the length and width of your front yard.
### Output Format
An integer that represents the total number of flamingos that you should purchase.
### Sample Input
```
10 10
```
### Sample Output
```
20
```
### Explanation

## Solutions
### C
```c
#include <stdio.h>

int main() {
    int length, width;
    scanf("%d", &length);
    scanf("%d", &width);
    printf("%d", length + width);
    return 0;
}
```
### C++
```cpp
#include <iostream>
using namespace std;

int main() {
    int length, width;
    cin >> length >> width;
    cout << length + width;
    return 0;
}
```
### C#
```cs
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SoloLearn
{
    class Program
    {
        static void Main(string[] args)
        {
            int length = Convert.ToInt32(Console.ReadLine()), width = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine(length + width);
        }
    }
}
```
### Java
```java
import java.util.Scanner;

public class Program {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int length = input.nextInt(), width = input.nextInt();
        System.out.println(length + width);
        input.close();
    }
}
```
### Python
```python
length, width = int(input()), int(input())
print(length + width)
```
### Ruby
```ruby
length = gets.chomp.to_i
width = gets.chomp.to_i
puts width + length
```
### Swift
```swift
if let length = readLine(), let width = readLine(), let l = Int(length), let w = Int(width) {
    print(l + w)
}
```