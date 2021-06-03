# Land Ho!
You are on a large ship and you put down anchor near a beautiful beach. There is a small boat ferrying passengers back and forth, and you get in line for it. How long will you have to wait to get to the beach? You know that 20 people can fit on the boat and each trip to shore takes 10 minutes each way.
## Task
Determine your wait time if you know the total number of people ahead of you in line.
### Input Format
An integer that represents the total number of people ahead of you in line.
### Output Format
An integer that represents the number of minutes that you will have to wait until you are standing on the beach.
### Sample Input
```
15
```
### Sample Output
```
10
```
### Explanation
You can get on the boat right away if you are the 16th person in line, it takes 10 minutes on the boat to get to the beach.
## Solutions
### C
```c
#include <stdio.h>

int main() {
    int people;
    scanf("%d", &people);
    int trips = people / 20;
    printf("%d", 10 + trips * 20);
    return 0;
} 
```
### C++
```cpp
#include <iostream>
using namespace std;

int main() {
    int people;
    cin >> people;
    int trips = people / 20;
    cout << 10 + trips * 20;
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
            int people = Convert.ToInt32(Console.ReadLine()), trips = people / 20;
            Console.WriteLine(10 + trips * 20);
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
        int people = input.nextInt(), trips = people / 20;
        System.out.println(10 + trips * 20);
        input.close();
    }
} 
```
### Python
```python
people = int(input())
trips = people // 20
print(10 + trips * 20)
```
### Ruby
```ruby
people = gets.chomp.to_i
trips = people / 20
puts 10 + trips * 20
```
### Swift
```swift
if let people = readLine(), let p = Int(people) {
    let trips = p / 20
    print(10 +trips * 20)
}
```