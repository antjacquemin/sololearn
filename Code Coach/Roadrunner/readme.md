# Roadrunner
A coyote is chasing a roadrunner and they start out 50 feet apart. If you know how fast they are both traveling, and how far the roadrunner is from safety, determine whether or not the coyote is able to catch the roadrunner. Both animals and the roadrunner's safe place are on a straight line.
## Task
Determine whether or not the roadrunner made it to safety.
### Input Format
Three integer values, the first value represents the distance the roadrunner is from safety, then the roadrunner's speed (feet/second) and then the coyote's speed (feet/second).
### Output Format
A string that says 'Meep Meep' if the roadrunner made it, or 'Yum' if the coyote caught up to the roadrunner.
### Sample Input
```
10 
5 
20
```
### Sample Output
```
Meep Meep
```
### Explanation
The roadrunner is safe because it took them 2 seconds to get to safety while the coyote only got 30 feet closer to the roadrunner in that same amount of time.
## Solutions
### C
```c
#include <stdio.h>

int main() {
    int distance, runnerSpeed, coyoteSpeed;
    scanf("%d", &distance);
    scanf("%d", &runnerSpeed);
    scanf("%d", &coyoteSpeed);
    double runnerTime = distance / runnerSpeed, coyoteTime = (distance + 50) / coyoteSpeed;
    if (runnerTime < coyoteTime)
        printf("Meep Meep");
    else
        printf("Yum");
    return 0;
} 
```
### C++
```cpp
#include <iostream>
using namespace std;

int main() {
    int distance, runnerSpeed, coyoteSpeed;
    cin >> distance >> runnerSpeed >> coyoteSpeed;
    double runnerTime = distance / runnerSpeed, coyoteTime = (distance + 50) / coyoteSpeed;
    if (runnerTime < coyoteTime)
        cout << "Meep Meep";
    else
        cout << "Yum";
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
            int distance = Convert.ToInt32(Console.ReadLine()), runnerSpeed = Convert.ToInt32(Console.ReadLine()), coyoteSpeed = Convert.ToInt32(Console.ReadLine());
            double runnerTime = distance / runnerSpeed, coyoteTime = (distance + 50) / coyoteSpeed;
            if (runnerTime < coyoteTime)
                Console.WriteLine("Meep Meep");
            else
                Console.WriteLine("Yum");
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
        int distance = input.nextInt();
        input.nextLine();
        int runnerSpeed = input.nextInt();
        input.nextLine();
        int coyoteSpeed = input.nextInt();
        double runnerTime = distance / runnerSpeed, coyoteTime = (distance + 50) / coyoteSpeed;
        if (runnerTime < coyoteTime)
            System.out.println("Meep Meep");
        else
            System.out.println("Yum");
        input.close();
    }
} 
```
### Python
```python
distance = int(input())
runnerSpeed = int(input())
coyoteSpeed = int(input())
runnerTime = distance / runnerSpeed
coyoteTime = (distance + 50) / coyoteSpeed
if runnerTime < coyoteTime:
    print("Meep Meep")
else:
    print("Yum")
```
### Ruby
```ruby
distance = gets.chomp.to_i
runnerSpeed = gets.chomp.to_i
coyoteSpeed = gets.chomp.to_i
runnerTime = distance / runnerSpeed
coyoteTime = (distance + 50) / coyoteSpeed
if runnerTime < coyoteTime
    puts "Meep Meep"
else
    puts "Yum"
end
```
### Swift
```swift
if let distance = readLine(), let runnerSpeed = readLine(), let coyoteSpeed = readLine(), let d = Int(distance), let rs = Int(runnerSpeed), let cs = Int(coyoteSpeed) {
    let runnerTime = d / rs
    let coyoteTime = (d + 50) / cs
    if runnerTime < coyoteTime {
        print("Meep Meep")
    } else {
        print("Yum")
    }
}

```