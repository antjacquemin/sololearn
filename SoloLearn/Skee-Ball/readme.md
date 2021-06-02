# Skee-Ball
You are playing a game at your local arcade, and you receive 1 ticket from the machine for every 12 points that you score. You want to purchase a squirt gun with your tickets. Given your score, and the price of the squirt gun (in tickets) are you able to buy it?
## Task
Evaluate whether or not you have scored high enough to earn enough tickets to purchase the squirt gun at the arcade.
### Input Format
The first input is an integer value that represents the points that you scored playing, and the second input is an integer value that represents the cost of the squirt gun (in tickets).
### Output Format
A string that say '**Buy it!**' if you will have enough tickets, or a string that says '**Try again**' if you will not.
### Sample Input
```
500
40
```
### Sample Output
```
Buy it!
```
### Explanation
By scoring 500 points, you will receive 41 tickets, which is enough to buy the squirt gun at a price of 40 tickets.
## Solutions
### C
```c
#include <stdio.h>

int main() {
    int score, tickets, cost;
    scanf("%d", &score);
    tickets = score / 12;
    scanf("%d", &cost);
    if (tickets < cost)
        printf("Try again");
    else
        printf("Buy it!");
    return 0;
} 
```
### C++
```cpp
#include <iostream>
using namespace std;

int main() {
    int score, tickets, cost;
    cin >> score >> cost;
    tickets = score / 12;
    if (tickets < cost)
        cout << "Try again";
    else
        cout << "Buy it!";
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
            int score = Convert.ToInt32(Console.ReadLine()), tickets = score / 12, cost = Convert.ToInt32(Console.ReadLine());
            if (tickets < cost)
                Console.WriteLine("Try again");
            else    
                Console.WriteLine("Buy it!");
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
        int score = input.nextInt(), tickets = score / 12, cost;
        input.nextLine();
        cost = input.nextInt();
        if (tickets < cost)
            System.out.println("try again");
        else    
            System.out.println("Buy it!");
        input.close();
    }
}
```
### Python
```python
score = int(input())
tickets = score // 12
cost = int(input())
if tickets < cost:
    print("Try again")
else:
    print("Buy it!")
```
### Ruby
```ruby
score = gets.chomp.to_i
tickets =  score / 12
cost = gets.chomp.to_i
if tickets < cost
    puts "Try again"
else
    puts "Buy it!")
end
```
### Swift
```swift
if let score = readLine(), let cost = readLine(), let s = Int(score), let c = Int(cost) {
    if s / 12 < c {
        print("Try again")
    } else {
        print("Buy it!")
    }
} 
```