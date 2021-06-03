# Izzy the Iguana
Your pet Iguana has run away, and you found it up in a tree! It will come down right away if you brought the right snacks, but if you don't have enough, you will have to wait. You need 10 total snack points to bring it down. Lettuce is worth 5, Carrot is worth 4, Mango is worth 9, and Cheeseburger is worth 0.
## Task
Evaluate whether or not you have enough snack points to convince your iguana to come down.
### Input Format
Your input is a string that represents the snacks that you have. Snacks are separated by spaces, you can have any number of snacks, and they can repeat.
### Output Format
A string that says 'Come on Down!' if you have enough points, or 'Time to wait' if you do not.
### Sample Input
```
Mango Cheeseburger Carrot
```
### Sample Output
```
Come on Down!
```
### Explanation
You have 13 snack points with a mango, cheeseburger, and carrot, which is enough to convince the iguana to come down.
## Solutions
### C
```c
#include <stdio.h>
#include <string.h>

int main() {
    char snacks[1000];
    fgets(snacks, 1000, stdin);
    int total = 0;
    char *snack = strtok(snacks, " ");
    while (snack != NULL) {
        if (strcmp(snack, "Lettuce") == 0)
            total += 5;
        else if (strcmp(snack, "Carrot") == 0)
            total += 4;
        else if (strcmp(snack, "Mango") == 0)
            total += 9;
        snack = strtok(NULL, " ");
    }
    if (total > 9)
        printf("Come on Down!");
    else 
        printf("Time to wait");
    return 0;
} 
```
### C++
```cpp
#include <iostream>
using namespace std;

int main() {
    string snack;
    int total = 0;
    while (cin >> snack) {
        if (snack == "Lettuce")
            total += 5;
        else if (snack == "Carrot")
            total += 4;
        else if (snack == "Mango")
            total += 9;
    }
    if (total > 9)
        cout << "Come on Down!";
    else
        cout << "Time to wait";
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
            string snacks = Console.ReadLine();
            int total = 0;
            foreach (string snack in snacks.Split()) {
                if (snack == "Lettuce")
                    total += 5;
                else if (snack == "Carrot")
                    total += 4;
                else if (snack == "Mango")
                    total += 9;
            }
            if (total > 9)
                Console.WriteLine("Come on Down!");
            else
                Console.WriteLine("Time to wait");
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
        String snacks = input.nextLine();
        int total = 0;
        for (String snack: snacks.split(" ")) {
            if (snack.equals("Lettuce"))
                total += 5;
            else if (snack.equals("Carrot"))
                total += 4;
            else if (snack.equals("Mango"))
                total += 9;
        }
        if (total > 9)
            System.out.println("Come on Down!");
        else 
            System.out.println("Time to wait");
        input.close();
    }
}
```
### Python
```python
snacks = input().split()
total = 0
for snack in snacks:
    if snack == "Lettuce":
        total += 5
    elif snack == "Carrot":
        total += 4
    elif snack == "Mango":
        total += 9
if total > 9:
    print("Come on Down!")
else:
    print("Time to wait")
```
### Ruby
```ruby
snacks = gets.chomp.split
total = 0
for snack in snacks
    case snack
    when "Lettuce"
        total += 5
    when "Carrot"
        total += 4
    when "Mango"
        total += 9
    end
end
if total > 9
    puts "Come on Down!"
else
    puts "Time to wait"
end
```
### Swift
```swift
import Foundation

if let snacks = readLine() {
    let array = snacks.components(separatedBy: " ")
    var total = 0
    for snack in array {
        if snack == "Lettuce" {
            total += 5;
        } else if snack == "Carrot" {
            total += 4;
        } else if snack == "Mango" {
            total += 9;
        }
    }
    if total > 9 {
        print("Come on Down!")
    } else {
        print("Time to wait")
    }
} 
```