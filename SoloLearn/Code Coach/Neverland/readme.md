# Neverland
If you live in Neverland, you never get any older! You and your twin go to Neverland for an afternoon, then your twin goes back home and you stay. Over time, how much older is your twin than you, and how old are they?
## Task
Evaluate the difference between your ages, and the age that your twin is now if you are given the age that you were when you got to Neverland, and the time that has elapsed since then.
### Input Format
Two integer values. The first represents your age when you arrived at Neverland, and the second, the number of years that have passed since your twin went back.
### Output Format
A string that states 'My twin is X years old and they are Y years older than me' Where X is their age and Y is the difference.
### Sample Input
```
10
8
```
### Sample Output
```
My twin is 18 years old and they are 8 years older than me
```
### Explanation
Your twin got 8 years older over the last 8 years while you stayed the same age the whole time.
## Solutions
### C
```c
#include <stdio.h>

int main() {
    int age, years;
    scanf("%d", &age);
    scanf("%d", &years);
    printf("My twin is %d years old and they are %d years older than me", age + years, years);
    return 0;
} 
```
### C++
```cpp
#include <iostream>
using namespace std;

int main() {
    int age, years;
    cin >> age >> years;
    cout << "My twin is " << age + years << " years old and they are " << years << " years older than me";
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
            int age = Convert.ToInt32(Console.ReadLine()), years = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("My twin is {0} years old and they are {1} years older than me", age + years, years);
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
        int age = input.nextInt();
        input.nextLine();
        int years = input.nextInt();
        System.out.printf("My twin is %d years old and they are %d years older than me", age + years, years);
        input.close();
    }
} 
```
### Python
```python
age = int(input())
years = int(input())
print(f"My twin is {age + years} years old and they are {years} years older than me")
```
### Ruby
```ruby
age = gets.chomp.to_i
years = gets.chomp.to_i
puts "My twin is %d years old and they are %d years older than me" % [age + years, years]
```
### Swift
```swift
if let age = readLine(), let years = readLine(), let a = Int(age), let y = Int(years) {
    print("My twin is \(a + y) years old and they are \(y) years older than me")
}
```