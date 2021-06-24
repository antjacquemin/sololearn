# Hovercraft
You run a hovercraft factory. Your factory makes **ten hovercrafts** in a month. Given the number of customers you got that month, did you make a profit? It costs you **2,000,000** to build a hovercraft, and you are selling them for **3,000,000**. You also pay **1,000,000** each month for insurance.
## Task
Determine whether or not you made a profit based on how many of the **ten hovercrafts** you were able to sell that month.
### Input Format
An integer that represents the sales that you made that month.
### Output Format
A string that says '**Profit**', '**Loss**', or '**Broke Even**'.
### Sample Input
```
5
```
### Sample Output
```
Loss
```
### Explanation
If you only sold 5 hovercrafts, you spent 21,000,000 to operate but only made 15,000,000.
## Solutions
### C
```c
#include <stdio.h>

int main() {
    int sales;
    scanf("%d", &sales);
    if (sales == 7)
        printf("Broke Even");
    else if (sales < 7)
        printf("Loss");
    else    
        printf("Profit");
    return 0;
}
```
### C++
```cpp
#include <iostream>
using namespace std;

int main() {
    int sales = 0;
    cin >> sales;
    if (sales == 7)
        cout << "Broke Even";
    else if (sales < 7)
        cout << "Loss";
    else    
        cout << "Profit";
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
            int sales = Convert.ToInt32(Console.ReadLine());
            if (sales == 7)
                Console.WriteLine("Broke Even");
            else if (sales < 7)
                Console.WriteLine("Loss");
            else    
                Console.WriteLine("Profit");
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
        int sales = input.nextInt();
        if (sales == 7)
            System.out.println("Broke Even");
        else if (sales < 7)
            System.out.println("Loss");
        else    
            System.out.println("Profit");
        input.close();
    }
}

```
### Python
```python
sales = int(input())
if sales == 7:
    print("Broke Even")
elif sales < 7:
    print("Loss")
else:
    print("Profit")
```
### Ruby
```ruby
sales = gets.chomp.to_i
if sales == 7
    puts "Broke Even"
elsif sales < 7
    puts "Loss"
else
    puts "Profit"
end
```
### Swift
```swift
if let sales = readLine(), let s = Int(sales) {
    if s == 7 {
        print("Broke Even")
    } else if s < 7 {
        print("Loss")
    } else {
        print("Profit")
    }
}
```