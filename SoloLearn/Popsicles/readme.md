# Popsicles
You have a box of popsicles and you want to give them all away to a group of brothers and sisters. If you have enough left in the box to give them each an even amount you should go for it! If not, they will fight over them, and you should eat them yourself later.
## Task
Given the number of siblings that you are giving popsicles to, determine if you can give them each an even amount or if you shouldn't mention the popsicles at all.
### Input Format
Two integer values, the first one represents the number of siblings, and the second one represents the number of popsicles that you have left in the box.
### Output Format
A string that says '**give away**' if you are giving them away, or '**eat them yourself**' if you will be eating them yourself.
### Sample Input
```
3 9
```
### Sample Output
```
give away
```
### Explanation
You can give the popsicles to the brothers and sisters because they would each get the same amount, **3**.
## Solutions
### C
```c
#include <stdio.h>

int main() {
    int siblings, popsicles;
    scanf("%d", &siblings);
    scanf("%d", &popsicles);
    if (popsicles % siblings == 0)
        printf("give away");
    else    
        printf("eat them yourself");
    return 0;
}
```
### C++
```cpp
#include <iostream>
using namespace std;

int main() {
    int siblings, popsicles;
    cin >> siblings >> popsicles;
    if (popsicles % siblings == 0)
        cout << "give away";
    else
        cout << "eat them yourself";
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
            int siblings, popsicles;
            siblings = Convert.ToInt32(Console.ReadLine());
            popsicles = Convert.ToInt32(Console.ReadLine());
            
            if (popsicles % siblings == 0)
                Console.WriteLine("give away");
            else
                Console.WriteLine("geat them yourself");
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
        int siblings = input.nextInt();
        int popsicles = input.nextInt();
        
        if (popsicles % siblings == 0)
            System.out.println("give away");
        else
            System.out.println("eat them yourself");
        input.close();
    }
}
```
### Python
```python
siblings = int(input())
popsicles = int(input())
if popsicles % siblings == 0:
    print("give away")
else:
    print("eat them yourself")
```
### Ruby
```ruby
siblings = gets.chomp.to_i
popsicles = gets.chomp.to_i
if popsicles % siblings == 0
    puts "give away"
else
    puts "eat them yourself"
end
```
### Swift
```swift
if let siblings = readLine(),
let popsicles = readLine(),
let s = Int(siblings),
let p = Int(popsicles) {
    if p % s == 0 {
        print("give away")
    } else {
        print("eat them yourself")
    }
}
```