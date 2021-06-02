# Argentina
You are in a hat store in Argentina! The prices are listed in US Dollars and Argentinian Pesos. You have both, but you want to make sure you pay the lower price! Do you pay in Dollars or Pesos? The exchange rate is 2 cents for every Peso.
## Task
Create a program that takes two prices and tells you which one is lower after conversion.
### Input Format
Two integer values, the first one is the price in Pesos and the second one is the price in Dollars.
### Output Format
A string that says which currency you should make the purchase in ('Dollars' or 'Pesos').
### Sample Input
```
4000
100
```
### Sample Output
```
Pesos
```
### Explanation
You should use Pesos to buy the hat since 4000 pesos is equal to $80.
## Solutions
### C
```c
#include <stdio.h>

int main() {
    int pesos, dollars;
    scanf("%d", &pesos);
    scanf("%d", &dollars);
    if (dollars > pesos / 50)
        printf("Pesos");
    else
        printf("Dollars");
    return 0;
}
```
### C++
```cpp
#include <iostream>
using namespace std;

int main() {
    int pesos, dollars;
    cin >> colors >> dollars;
    if (dollars > pesos / 50)
        cout << "Pesos";
    else
        cout << "Dollars";
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
            int pesos = Convert.ToInt32(Console.ReadLine()) / 50, dollars = Convert.ToInt32(Console.ReadLine());
            if (pesos < dollars)
                Console.WriteLine("Pesos");
            else
                Console.WriteLine("Dollars");
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
        int pesos = input.nextInt() / 50;
        input.nextLine();
        int dollars = input.nextInt();
        if (pesos < dollars)
            System.out.println("Pesos");
        else
            System.out.println("Dollars");
        input.close();
    }
}
```
### Python
```python
pesos = int(input())
dollars = int(input()) * 50
if pesos < dollars:
    print("Pesos")
else:
    print("Dollars")
```
### Ruby
```ruby
pesos = get.chomp.to_i
dollars = get.chomp.to_i * 50
if pesos < dollars
    puts "Pesos"
else
    puts "Dollars"
end
```
### Swift
```swift
if let pesos = readLine(), let dollars = readLine(), let p = Int(pesos), let d = Int(dollars) {
    if p < d * 50 {
        print("Pesos")
    } else {
        print("Dollars")
    }
}
```