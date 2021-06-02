# Paint Costs
You are getting ready to paint a piece of art. The canvas and brushes that you want to use will cost 40.00. Each color of paint that you buy is an additional 5.00. Determine how much money you will need based on the number of colors that you want to buy if tax at this store is 10%.
## Task
Given the total number of colors of paint that you need, calculate and output the total cost of your project rounded up to the nearest whole number.
### Input Format
An integer that represents the number of colors that you want to purchase for your project.
### Output Format
A number that represents the cost of your purchase rounded up to the nearest whole number.
### Sample Input
```
10
```
### Sample Output
```
99
```
### Explanation
You need 50.00 to buy 10 colors of paint + 40.00 for the canvas and brushes + 9.00 for the tax.
## Solutions
### C
```c
#include <stdio.h>
#include <math.h>

int main() {
    float colors, total, tax;
    scanf("%f", &colors);
    total = 40 + 5 * colors;
    tax = total / 10;
    printf("%d", (int) ceil(total + tax));
    return 0;
} 
```
### C++
```cpp
#include <iostream>
#include <cmath>
using namespace std;

int main() {
    float colors, total, tax;
    cin >> colors;
    total = 40 + 5 * colors;
    tax = total / 10;
    cout << (int) ceil(total + tax);
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
            float colors = float.Parse(Console.ReadLine()), total = 40 + 5 * colors, tax = total / 10;
            Console.WriteLine(Convert.ToInt32(Math.Ceiling(total + tax)));
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
        double colors = input.nextDouble(), total = 40 + 5 * colors, tax = total / 10;
        System.out.println((int) Math.ceil(total + tax));
        input.close();
    }
}
```
### Python
```python
from math import ceil

colors = float(input())
total = 40.0 +5.0 * colors
tax = total / 10
print(ceil(total + tax))
```
### Ruby
```ruby
colors = gets.chomp_to_f
total = 40 + 5 * colors
tax = total / 10
puts (total + tax).ceil
```
### Swift
```swift
import Foundation

if let colors = readLine(), let c = Double(colors) {
    let total = 40.0 + 5.0 * c
    let tax = total / 10
    print(Int(ceil(total + tax))) 
}
```