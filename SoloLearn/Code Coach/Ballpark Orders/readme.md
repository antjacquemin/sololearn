# Ballpark Orders
You and three friends go to a baseball game and you offer to go to the concession stand for everyone. They each order one thing, and you do as well. Nachos and Pizza both cost $6.00. A Cheeseburger meal costs $10. Water is $4.00 and Coke is $5.00. Tax is 7%.
## Task
Determine the total cost of ordering four items from the concession stand. If one of your friend’s orders something that isn't on the menu, you will order a Coke for them instead.
### Input Format
You are given a string of the four items that you've been asked to order that are separated by spaces.
### Output Format
You will output a number of the total cost of the food and drinks.
### Sample Input
```
Pizza Cheeseburger Water Popcorn
```
### Sample Output
```
26.75
```
### Explanation
Because Popcorn is not on the menu, this friend gets a coke which brings the subtotal to $25.00 and $26.75 with tax.
## Solutions
### C
```c
#include <stdio.h>
#include <string.h>

int main() {
    char orders[1000];
    scanf("%[^\n]%*c", orders);
    float total = 0.0;
    char *order = strtok(orders, " ");
    while (order != NULL) {
        if (strcmp(order, "Nachos") == 0 || strcmp(order, "Pizza") == 0)
            total += 6.0;
        else if (strcmp(order, "Cheeseburger") == 0)
            total += 10.0
        else if (strcmp(order, "Water") == 0)
            total += 4.0
        else    
            total += 5.0;
        order = strtok(NULL, ",");
    }
    float tax = total * 7 / 100;
    printf("%.2f", total + tax);
    return 0;
}
```
### C++
```cpp
#include <iostream>
using namespace std;

int main() {
    string order;
    float total = 0.0;
    while (cin >> order) {
        if (order == "Nachos" || order == "Pizza")
            total += 6.0;
        else if (order == "Cheeseburger")
            total += 10.0;
        else if (order == "Water")
            total += 4.0;
        else
            total += 5.0;
    }
    float tax = total * 7 /100;
    cout << total + tax;
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
            string orders = Console.ReadLine();
            double total = 0.0;
            foreach (string order in orders.Split()) {
                if (order == "Nachos" || order == "Pizza")
                    total += 6.0;
                else if (order == "Cheeseburger")
                    total += 10.0;
                else if (order == "Water")
                    total += 4.0;
                else
                    total += 5.0;
            }
            double tax = total * 7 / 100;
            Console.WriteLine(total + tax);
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
        String orders = input.nextLine();
        double total = 0.0;
        for (String order: orders.split(" ")) {
            if (order.equals("Nachos") || order.equals("Pizza"))
                total += 6.0;
            else if (order.equals("Pizza"))
                total += 10.0;
            else if (order.equals("Water"))
                total += 4.0;
            else
                total += 5.0;
        }
        double tax = total * 7 / 100;   
        System.out.println(total + tax);
        input.close();
    }
}

```
### Python
```python
orders = input().split()
total = 0.0
for order in orders:
    if order == "Nachos" or order == "Pizza":
        total += 6.0
    elif order == "Cheeseburger":
        total += 10.0
    elif order == "Water":
        total += 4.0
    else:
        total += 5.0
tax = total * 7 /100
print(total + tax)
```
### Ruby
```ruby
orders = gets.chomp.split
total = 0.0
for order in orders
    case order
    when "Nachos", "Pizza"
        total += 6.0
    when "Cheeseburger"
        total += 10.0
    when "Water"
        total += 4.0
    else
        total += 5.0
    end
end
tax = total * 7 /100
puts total + tax
```
### Swift
```swift
import Foundation

if let orders = readLine() {
    let array = orders.components(separatedBy: " ")
    var total = 0.0
    for order in array {
        if order == "Nachos" || order == "Pizza" {
            total += 6.0;
        } else if order == "Cheeseburger" {
            total += 10.0;
        } else if order == "Water" {
            total += 4.0;
        } else {
            total += 5.0;
        }
    }
    let tax = total * 7 / 100
    print(total + tax)
}
```