# Tax Free
You are shopping at a store that is having a special where you do not have to pay the tax on anything that costs 20 dollars or more! If you have a list of prices for all of your items, what is your total once the tax is added in? Tax is 7% on the items that you would still need to pay tax on.
## Task
Determine the total cost once you include tax of 7% on the items that are still taxed.
### Input Format
A string of numbers, separated by commas, that represent to price of each item that you are going to buy.
### Output Format
A number, rounded to two decimal places, of the total for your purchase once tax is included on items under 20 dollars.
### Sample Input
```
5,18,25,34
```
### Sample Output
```
83.61
```
### Explanation
You would only have to pay the tax on the 5 and 18 dollar items and that bring your total to $83.61.
## Solutions
### C
```c
#include <stdio.h>
#include <string.h>

int main() {
    char prices[1000];
    fgets(prices, 1000, stdin);
    float val, total = 0.0;
    char *price = strtok(prices, ",");
    while (price != NULL) {
        sscanf(price, "%f", &val);
        if (val < 20>)
            val *= 1.07;
        total += val;
        price = strtok(NULL, ",");
    }
    printf("%.2f", total);
    return 0;
} 
```
### C++
```cpp
#include <iostream>
#include <math>
using namespace std;

double price(string value) {
    double price = stod(value);
    if (price < 20)
        price *= 1.07;
    return price
}

int main() {
    string prices;
    double total = 0.0;
    cin >> prices;
    size_t pos = 0;
    while ((pos = prices.find(",")) != string::npos) {
        total += price(prices.substr(0, pos));
        prices.erase(0, pos + 1);
    }
    total += price(prices);
    cout << round(total * 100) / 100;
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
            double val, total = 0.0;
            foreach (string price in prices.Split(",")) {
                val = Convert.ToDouble(price);
                if (val < 20)
                    val *= 1.07;
                total += val;
            }
            Console.WriteLine(total);
        }
    }
} 
```
### Java
```java
import java.util.Scanner;

public class Program {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in).useDelimiter(",");
        double price, total = 0.0;
        while (input.hasNext()) {
            price = input.nextDouble();
            if (price < 20)
                price *= 1.07;
            total += price;
        }
        System.out.println(total);
        input.close();
    }
}
```
### Python
```python
prices = map(int, input().split(","))
total = 0.0
for price in prices:
    total += price
    if price < 20:
        total += 0.07 * price
print(round(total, 2))
```
### Ruby
```ruby
prices = gets.chomp.split(",").map { |string| string.to_f }
total = 0.0
for price in prices
    total += price
    if price < 20
        total += 0.07 * price
    end
end
puts total.round(2)
```
### Swift
```swift
import Foundation

if let prices = readLine() {
    let array = prices.components(separatedBy: ",")
    var total = 0.0
    for price in array {
        if let p = Double(price) {
            total += p
            if p < 20 {
                total += 0.07 * p
            }
        }
    }
    print(Double(round(total * 100) / 100))
} 
```