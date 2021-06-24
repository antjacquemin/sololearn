# Gotham City
You are a police officer, and you get a report of criminal activity! Should you go on your own, or should you call a superhero to help you fight the crime? If there are less than 5, you can handle this on your own, if there are 5-10, you will want to go with Batman for backup, and if there are more than 10, you should stay where it is safe and let Batman handle this on his own!
## Task
Determine whether you need to call backup based on the total number of criminals being reported.
### Input Format
An integer that represents the total number of criminals present at the scene.
### Output Format
A string that says 'I got this!', 'Help me Batman', or 'Good Luck out there!' depending on the scenario.
### Sample Input
```
7
```
### Sample Output
```
Help me Batman
```
### Explanation
If there are 7 criminals, you and Batman should handle this situation together.
## Solutions
### C
```c
#include <stdio.h>

int main() {
    int nb;
    scanf("%d", &nb);
    if (nb < 5)
        printf("I got this!");
    else if (nb < 11)
        printf("Help me Batman");
    else
        printf("Good Luck out there!");
    return 0;
}
```
### C++
```cpp
#include <iostream>
using namespace std;

int main() {
    int nb = 0;
    cin >> nb;
    if (nb < 5)
        cout << "I got this!";
    else if (nb < 11)
        cout << "Help me Batman";
    else
        cout << "Good Luck out there!";
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
            int nb = Convert.ToInt32(Console.ReadLine());
            if (nb < 5) 
                Console.WriteLine("I got this!");
            else if (nb < 11)
                Console.WriteLine("Help me Batman");
            else
                Console.WriteLine("Good Luck out there!");
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
        int nb = input.nextInt();
        if (nb < 5) 
            System.out.println("I got this!");
        else if (nb < 11)
            System.out.println("Help me Batman");
        else
            System.out.println("Good Luck out there!");
        input.close();
    }
}
```
### Python
```python
nb = int(input())
if nb < 5:
    print("I got this!")
elif nb < 11:
    print("Help me Batman")
else:
    print("Good Luck out there!")
```
### Ruby
```ruby
nb = gets.chomp.to_i
if nb < 5
    puts "I got this!"
elsif nb < 11
    puts "Help me Batman"
else
    puts "Good Luck out there!"
end
```
### Swift
```swift
if let input = readLine(),
var nb = Int(input) {
    if nb < 5 { 
        print("I got this!")
    } else if nb < 11 {
        print("Help me Batman")
    } else {
        print("Good Luck out there!")
    }
}
```