# Duct Tape
You want to completely cover a flat door on both sides with duct tape. You need to know how many rolls of duct tape to buy when you go to the store.
## Task
Given the height and width of the door, determine how many rolls of duct tape you will need (a roll of duct tape is 60 feet long and 2 inches wide and there are 12 inches in each foot). Don't forget both sides of the door!
### Input Format
Two integers that represent the height and width of the door.
### Output Format
An integer that represents the total rolls of duct tape that you need to buy.
### Sample Input
```
7
4
```
### Sample Output
```
6
```
### Explanation
You will need 6 rolls of duct tape to cover both sides of a 7ft x 4ft door.
## Solutions
### C
```c
#include <stdio.h>
#include <math.h>

int main() {
    int height, width, area, rolls;
    scanf("%d", &height);
    scanf("%d", &width);
    area = height * width * 2;
    rolls = ceil(area / 10.0);
    printf("%d", rolls);
    return 0;
} 
```
### C++
```cpp
#include <iostream>
#include <cmath>

using namespace std;

int main() {
    int height, width, area;
    cin >> height >> width;
    area = height * width * 2;
    cout << ceil(area / 10.0);
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
            int height = Convert.ToInt32(Console.ReadLine()), width = Convert.ToInt32(Console.ReadLine()), area = height * width * 2;
            Console.WriteLine(Math.Ceiling(area / 10.0));
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
        int height, width, area;
        height = input.nextInt();
        input.nextLine();
        width = input.nextInt();
        area = height * width * 2;
        System.out.println((int)Math.ceil(area / 10.0));
        input.close();
    }
} 
```
### Python
```python
from math import ceil

height = int(input())
width = int(input())
area = height * width * 2
print(ceil(area / 10))
```
### Ruby
```ruby
height = gets.chomp.to_i
width = gets.chomp.to_i
area = width * height * 2
puts (area / 10.0).ceil
```
### Swift
```swift
import Foundation

if let height = readLine(), let width = readLine(), let h = Int(height), let w = Int(width) {
    let area  = w * h * 2
    print(Int(ceil(Double(area) / 10.0)))
}
```