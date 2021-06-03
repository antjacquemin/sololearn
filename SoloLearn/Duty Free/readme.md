# Duty Free
You make a purchase of souvenirs priced in Euros at a duty free store in the Rome airport. You didn't want to spend any more than 20 US Dollars on any specific item. Can you go through your list and make sure you stayed under your limit? The conversion rate on this day is 1.1 US Dollars to 1 Euro.
## Task
Evaluate each item that you purchased to make sure that you didn't spend more than $20 on that particular item. If you did, you will need to go back to the store to return it.
### Input Format
A string of numbers separated by spaces that represent the prices of each of your items in Euros.
### Output Format
A string that says 'On to the terminal' if you stayed under your cap, or 'Back to the store' if you spent too much money.
### Sample Input
```
18 15.50 2 14
```
### Sample Output
```
On to the terminal
```
### Explanation
You stayed under your cap because your most expensive item only cost $19.80 in US dollars (1 Euro = 1.1 USD).
## Solutions
### C
```c
#include <stdio.h>
#include <string.h>

int main() {
    char prices[1000];
    fgets(prices, 1000, stdin);
    float val, max = 0.0;
    char *price = strtok(prices, " ");
    while (price != NULL) {
        sscanf(price, "%f", &val);
        if (val > max)
            max = val;
        price = strtok(NULL, " ");
    }
    if (max * 1.1 > 20)
        printf("Back to the store");
    else 
        printf("On to the terminal");
    return 0;
} 
```
### C++
```cpp
#include <iostream>
using namespace std;

int main() {
    double price, max = 0.0;
    while (cin >> price) {
        if (price > max)
            max = price;
    }
    if (max * 1.1 > 20)
        cout << "Back to the store";
    else 
        cout << "On to the terminal";
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
            string prices = Console.ReadLine();
            double val, max = 0.0;
            foreach (string price in prices.Split()) {
                val = Convert.ToDouble(price);
                if (val > max)
                    max = val;
            }
            if (max * 1.1 > 20)
                Console.WriteLine("Back to the store");
            else
                Console.WriteLine("On to the terminal");
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
        double price, max = 0.0;
        while (input.hasNext()) {
            price = input.nextDouble();
            if (price > max)
                max = price;
        }
        if (max * 1.1 > 20)
            System.out.println("Back to the store");
        else 
            System.out.println("On to the terminal");
        input.close();
    }
}
```
### Python
```python
prices = map(float, input.split())
maxUSD = max(prices) * 1.1
if (maxUSD > 20):
    print("Back to the store")
else:
    print("On to the terminal")
```
### Ruby
```ruby
prices = gets.chomp.split.map { |string| string.to_f }
maxUSD = prices.max * 1.1
if maxUSD > 20
    puts "Back to the store"
else
    puts "On to the terminal"
end
```
### Swift
```swift
import Foundation

if let prices = readLine() {
    let array = prices.components(separatedBy: " ")
    var max = 0.0
    for price in array {
        if let p = Double(price) {
            if p > max {
                max = p
            }
        }
    }
    if max * 1.1 > 20 {
        print("Back to the store")
    } else {
        print("On to the terminal")
    }
} 
```