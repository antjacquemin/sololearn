# Cheer Creator
You are cheering on your favorite team. After each play, if your team got over 10 yards further down the field, you stand up and give your friend **a high five**. If they don't move forward by at least a yard you stay quiet and say '**shh**', and if they move forward 10 yards or less, you say '**Ra!**' for every yard that they moved forward in that play.
## Task
Given the number of yards that your team moved forward, output either '**High Five**' (for over 10), '**shh**' (for <1), or a string that has a '**Ra!**' for every yard that they gained.
### Input Format
An integer value that represents the number of yards gained or lost by your team.
### Output Format
A string of the appropriate cheer.
### Sample Input
```
3
```
### Sample Output
```
Ra!Ra!Ra!
```
### Explanation
If your team gains 3 yards you would cheer 'Ra!' three times for that play.
## Solutions
### C
```c
#include <stdio.h>

int main() {
    int yards;
    scanf("%d", &yards);
    if (yards > 10)
        printf("High Five");
    else if (yards < 1)
        printf("shh");
    else {
        for (int i=0; i<yards; i++)
            printf("Ra!");
    }
    return 0;
}
```
### C++
```cpp
#include <iostream>
using namespace std;

int main() {
    int yards;
    cin >> yards;
    if (yards > 10)
        cout << "High Five";
    else if (yards < 1)
        cout << "shh";
    else {
        for (int i=0; i<yards; i++)
            cout << "Ra!";
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
            int yards = Convert.ToInt32(Console.ReadLine());
            if (yards > 10) 
                Console.WriteLine("High Five");
            else if (yards < 1)
                Console.WriteLine("shh");
            else
                Console.WriteLine(String.Concat(Enumerable.Repeat("Ra!", yards)));
        }
    }
}
```
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
            int yards = Convert.ToInt32(Console.ReadLine());
            if (yards > 10) 
                Console.WriteLine("High Five");
            else if (yards < 1)
                Console.WriteLine("shh");
            else {
                string ra = "Ra!";
                Console.WriteLine(new StringBuilder(ra.Length * yards).Insert(0, ra, yards).ToString());
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
        int yards = input.nextInt();
        if (yards > 10)
            System.out.println("High Five");
        else if (yards < 1)
            System.out.println("shh");
        else
            System.out.println("Ra!".repeat(yards));
        input.close();
    }
}
```
### Python
```python
yards = int(input())
if yards > 10:
    print("High Five")
elif yards < 1:
    print("shh")
else:
    print("Ra!" * yards)
```
### Ruby
```ruby
yards = gets.chomp.to_i
if yards > 10
    puts "High Five"
elsif yards < 1
    puts "shh"
else
    puts "Ra!" * yards
end
```
### Swift
```swift
if let yards = readLine(), let y = Int(yards) {
    if y > 10 {
        print("High Five")
    } else if y < 1 {
        print("shh")
    } else {
        for i in 1...y {
            print("Ra!")
        }
    }
}
```