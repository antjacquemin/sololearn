# Kaleidoscopes
You sell souvenir kaleidoscopes at a gift shop, and if a customer buys more than one, they get a 10% discount on all of them! Given the total number of kaleidoscopes that a customer buys, let them know what their total will be. Tax is 7%. All of your kaleidoscopes cost the same amount, 5.00.
## Task
Take the number of kaleidoscopes that a customer buys and output their total cost including tax and any discounts.
### Input Format
An integer value that represents the number of kaleidoscopes that a customer orders.
### Output Format
A number that represents the total purchase price to two decimal places.
### Sample Input
```
4
```
### Sample Output
```
19.26
```
### Explanation
A purchase of 4 kaleidoscopes would give the customer a 10% discount, then with tax the total is 19.26.
## Solutions
### C
```c
#include <stdio.h>
#include <math.h>

int main() {
    int kaleidoscopes;
    scanf("%d", &kaleidoscopes);
    double cost = 5 * kaleidoscopes;
    if (kaleidoscopes > 1)
        cost *= 0.9;
    cost *= 1.07;
    printf("%.2f", round(cost * 100) / 100);
    return 0;
} 
```
### C++
```cpp
#include <iostream>
#include <cmath>
using namespace std;

int main() {
    int kaleidoscopes;
    cin >> kaleidoscopes;
    double cost = 5 * kaleidoscopes;
    if (kaleidoscopes > 1)
        cost *= 0.9;
    cost *= 1.07;
    cout << round(cost * 100) / 100;
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
            int kaleidoscopes = Convert.ToInt32(Console.ReadLine());
            double cost = 5 * kaleidoscopes;
            if (kaleidoscopes > 1)
                cost *= 0.9;
            cost *= 1.07;
            Console.WriteLine(Math.Round(cost, 2, MidpointRounding.AwayFromZero));
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
        int kaleidoscopes = input.nextInt();
        double cost = 5 * kaleidoscopes;
        if (kaleidoscopes > 1)
            cost *= 0.9;
        cost *= 1.07;
        System.out.println((double) Math.round(cost * 100) / 100);
        input.close();
    }
} 
```
### Python
```python
kaleidoscopes = int(input())
cost = 5 * kaleidoscopes
if (kaleidoscopes > 1):
    cost *= 0.9
cost *= 1.07
print(round(cost, 2))
```
### Ruby
```ruby
kaleidoscopes = gets.chomp.to_i
cost = 5 * kaleidoscopes
if kaleidoscopes > 1
    cost *= 0.9
end
cost *= 1.07
puts cost.round(2)
```
### Swift
```swift
import Foundation

if let kaleidoscopes = readLine(), let k = Int(kaleidoscopes) {
    var cost = Double(5 * k)
    if (k > 1)
        cost *= 0.9
    cost *= 1.07
    print(Double(round(cost * 100) / 100))
} 
```