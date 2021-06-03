# Halloween Candy
You go trick or treating with a friend and all but three of the houses that you visit are giving out candy. One house that you visit is giving out toothbrushes and two houses are giving out dollar bills.
## Task
Given the input of the total number of houses that you visited, what is the percentage chance that one random item pulled from your bag is a dollar bill?
### Input Format
An integer (>=3) representing the total number of houses that you visited.
### Output Format
A percentage value rounded up to the nearest whole number.
### Sample Input
```
4
```
### Sample Output
```
50
```
### Explanation
If you visited four houses, one would be candy, two would be dollars, and one would be a toothbrush. A 2 in 4 chance is 50%.
## Solutions
### C
```c
#include <stdio.h>
#include <math.h>

int main() {
    int houses;
    scanf("%d", &houses);
    printf("%.0f", ceil(2.0 / houses * 100));
    return 0;
}
```
### C++
```cpp
#include <iostream>
#include <math.h>
using namespace std;

int main() {
    int houses;
    cin >> houses;
    cout << ceil(2.0 / houses * 100);
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
            int houses = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine(Math.Ceiling(2.0 / houses * 100));
        }
    }
```
### Java
```java
import java.util.Scanner;

public class HalloweenCandy {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int houses = input.nextInt();
        System.out.println(Math.round(Math.ceil(2f / houses * 100)));
        input.close();
    }
}
```
### Python
```python
from math import ceil

houses = int(input())
print(ceil(2 / houses * 100))
```
### Ruby
```ruby
houses = gets.chomp.to_i
puts (2.0 / houses * 100).ceil
```
### Swift
```swift
import Glibc

if let houses = readLine(),
let h = Double(houses) {
    var p = Int(ceil(2 / h * 100))
    print(p)
}
```