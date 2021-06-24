# Snap, Crackle and Pop
You have six bowls of Rice Krispies in front of you, and they make different noises when you pour milk over them based on the total number of Rice Krispies in each bowl. If a bowl has a number of Rice Krispies that is divisible by 3, it will make a Pop sound. If it is not divisible by 3 but is odd it will make a Snap sound. If it is not divisible by 3, but it is even, it will make a Crackle sound.
## Task
Based on the quantities in each bowl, output the noise that they make.
### Input Format
You receive 6 integers and each integer represents the number of Rice Krispies in your bowls.
### Output Format
You should output a string with the sounds made by each bowl separated by spaces in the order that they were input.
### Sample Input
```
18
5
100
25
40
24
```
### Sample Output
```
Pop Snap Crackle Snap Crackle Pop
```
### Explanation
Each number divisible by 3 makes a pop sound. If not, the even numbers produce a Crackle, and the odd numbers produce a Snap.
## Solutions
### C
```c
#include <stdio.h>

int main() {
    int number;
    for (int i=0; i<6; i++) {
        scanf("%d", &number);
        if (number % 3 == 0) 
            printf("Pop ");
        else if (number % 2 == 0)
            printf("Crackle ");
        else
            printf("Snap ");
    }
    return 0;
} 
```
### C++
```cpp
#include <iostream>
using namespace std;

int main() {
   int number;
    for (int i=0; i<6; i++) {
        cin >> number;
        if (number % 3 == 0) 
            cout << "Pop ";
        else if (number % 2 == 0)
            cout << "Crackle ";
        else
            cout << "Snap ";
    }
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
            int number;
            for (int i=0; i<6; i++) {
                number = Convert.ToInt32(Console.ReadLine());
                if (number % 3 == 0) 
                    Console.Write("Pop ");
                else if (number % 2 == 0)
                    Console.Write("Crackle ");
                else
                    Console.Write("Snap ");
            }
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
        int number;
        for (int i=0; i<6; i++) {
            number = input.nextInt();
            if (number % 3 == 0) 
                System.out.print("Pop ");
            else if (number % 2 == 0)
                System.out.print("Crackle ");
            else
                System.out.print("Snap ");
        }
        input.close();
    }
}
```
### Python
```python
for _ in range(6):
    number = int(input())
    if number % 3 == 0:
        print("Pop", end=" ")
    elif number % 2 == 0:
        print("Crackle", end=" ")
    else:
        print("Snap", end=" ")
```
### Ruby
```ruby
for i in 1..6
    number = gets.chomp.to_i
    if number % 3 == 0
        puts "Pop "
    elsif number % 2 == 0
        puts "Crackle "
    else 
        puts "Snap "
    end
end
```
### Swift
```swift
for i in 1...6 {
    if let number = readLine(), let n = Int(number) {
        if n % 3 == 0 {
            print("Pop", terminator: " ")
        } else if n % 2 == 0 {
            print("Crackle", terminator: " ")
        } else {
            print("Snap", terminator: " ")
        }
    }
}
```