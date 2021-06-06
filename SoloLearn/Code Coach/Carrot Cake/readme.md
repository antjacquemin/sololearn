# Carrot Cake
You are packing boxes of carrots for a farm co-op, and you are supposed to evenly distribute all of the carrots that you have into the boxes. The total number of carrots in each box doesn't matter as long as you distribute them evenly, and there are not enough leftover to put another carrot in each box. Anything that you have left over, you get to keep. You need 7 carrots to make the cake the way that you want to.
## Task
Determine if you will have enough leftover carrots to make your cake.
### Input Format
Two integer values. The first represents the number of carrots that you start with, and the second is the number of boxes that need to be packed into.
### Output Format
A string that says 'Cake Time' if you have enough, or that says 'I need to buy X more' where X is the extra amount you need for your cake.
### Sample Input
```
100
10
```
### Sample Output
```
I need to buy 7 more
```
### Explanation
You will have zero leftover carrots after you neatly pack 100 carrots evenly into 10 boxes. You need to buy all of the carrots (7) for your cake.
## Solutions
### C
```c
#include <stdio.h>

int main() {
    int carrots, boxes, remainder, missing;
    scanf("%d", &carrots);
    scanf("%d", &boxes);
    remainder = carrots % boxes;
    missing = 7 - remainder
    if (missing <= 0)
        printf("Cake Time");
    else
        printf("I need to buy %d more", missing);
    return 0;
}
```
### C++
```cpp
#include <iostream>
using namespace std;

int main() {
    int carrots, boxes, remainder, missing;
    cin >> carrots >> boxes;
    remainder = carrots % boxes;
    missing = 7 - remainder
    if (missing <= 0)
        cout << "Cake Time";
    else
        cout << "I need to buy " << missing << " more";
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
            int carrots = Convert.ToInt32(Console.ReadLine()), boxes = Convert.ToInt32(Console.ReadLine()), remainder = carrots % boxes, missing = 7 - remainder;
            if (missing <= 0)
                Console.WriteLine("Cake Time");
            else    
                Console.WriteLine($"I need to buy {missing} more");
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
        int carrots = input.nextInt();
        input.nextLine();
        int boxes = input.nextInt();
        int remainder = carrots % boxes, missing = 7 - remainder;
        if (missing <= 0)
            System.out.println("Cake Time");
        else    
            System.out.println("I need to buy " + missing + " more");
        input.close();
    }
}

```
### Python
```python
carrots = int(input())
boxes = int(input())
remainder = carrots % boxes
missing = 7 - remainder
if missing <= 0:
    print("Cake Time")
else:
    print(f"I need to buy {missing} more")
```
### Ruby
```ruby
carrots = gets.chomp.to_i
boxes = gets.chomp.to_i
remainder = carrots % boxes
missing = 7 - remainder
if missing <= 0
    puts "Cake Time"
else
    puts "I need to buy %d more" % [missing]
end
```
### Swift
```swift
if let carrots = readLine(), let boxes = readLine(), let c = Int(carrots), let b = Int(boxes) {
    let remainder = c % b
    let missing = 7 - remainder
    if missing <= 0 {
        print("Cake Time")
    } else {
        print("I need to buy \(missing) more")
    }
}
```