# Fruit Bowl
You have a bowl on your counter with an even number of pieces of fruit in it. Half of them are bananas, and the other half are apples. You need 3 apples to make a pie.
## Task
Your task is to evaluate the total number of pies that you can make with the apples that are in your bowl given to total amount of fruit in the bowl.
### Input Format
An integer that represents the total amount of fruit in the bowl.
### Output Format
An integer representing the total number of whole apple pies that you can make.
### Sample Input
```
26
```
### Sample Output
```
4
```
### Explanation
If you have 26 pieces of fruit, you have 13 apples, which makes 4 pies, and leaves one apple left over.
## Solutions
### C
```c
#include <stdio.h>

int main() {
    int fruit;
    scanf("%d", &fruit);
    int apples = fruit / 2;
    int pies = apples / 3;
    printf("%d", pies);
    return 0;
}
```
### C++
```cpp
#include <iostream>
using namespace std;

int main() {
    int fruit;
    cin >> fruit;
    int apples = fruit / 2;
    int pies = apples / 3;
    cout << pies;
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
            int fruit = Convert.ToInt32(Console.ReadLine());
            int apples = fruit / 2;
            int pies = apples / 3;
            Console.WriteLine(pies);
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
        int fruit = input.nextInt();
        int apples = fruit / 2;
        int pies = apples / 3;
        System.out.println(pies);
        input.close();
    }
}
```
### Python
```python
fruit = int(input())
apple = fruit // 2
pie = apple // 3
print(pie)
```
### Ruby
```ruby
fruit = gets.chomp.to_i
apples = fruit / 2
pies = apples / 3
puts pies
```
### Swift
```swift
if let entree = readLine(),
var fruits = Int(entree) {
    var apples = fruits / 2
    var pies = apples / 3
    print(pies)
}
```