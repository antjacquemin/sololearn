# Snowballing Numbers
You are given a list of numbers in a particular order. You need to check to see if each number is greater than the sum of all the previous number of the list.
If they are, you have created successful snowball numbers.
## Task
Create a program that takes in an array of numbers, check if each number is greater than the sum of all previous numbers, and output true if the condition is met, and false, if not.
### Input Format
The first input denotes the length of the list (N). The next N lines contain the list elements as integers.
### Output Format
A string, true or false.
### Sample Input
```
4
1
3
7
58
```
### Sample Output
```
true
```
### Explanation
Each number in the input list is greater than the sum of the previous numbers: 3>1, 7>3+1, 58>7+3+1
## Solutions
### C
```c
#include <stdio.h>

const char* snowball(int n) {
    int val, total = 0;
    for (int i=0; i<n; i++) {
        scanf("%d", &val);
        if (val <= total)
            return "false";
        total += val;
    }
    return "true";
}

int main() {
    int n;
    scanf("%d", &n);
    printf("%s", snowball(n));
    return 0;
}
```
### C++
```cpp
#include <iostream>
using namespace std;

string snowball(int n) {
    int val, total = 0;
    for (int i=0; i<n; i++) {
        cin >> val;
        if (val <= total)
            return "false";
        total += val;
    }
    return "true";
}

int main() {
    int n;
    cin >> n;
    cout << snowball(n);
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
        static string snowball(int n) {
            int val, total = 0;
            for (int i=0; i<n; i++) {
                val = Convert.ToInt32(Console.ReadLine());
                if (val <= total)
                    return "false";
                total += val;
            }
            return "true";
        }

        static void Main(string[] args)
        {
            int n = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine(snowball(n));
        }
    }
}
```
### Java
```java
import java.util.Scanner;

public class Program {

    public static String snowball(Scanner scanner) {
        int n = scanner.nextInt(), val, total = 0;
        for (int i=0; i<n; i++) {
            val = scanner.nextInt();
            if (val <= total)
                return "false";
            total += val;
        }
        return "true";
    }

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.println(snowball(input));
        input.close();
    }
}
```
### Python
```python
def snowball(n):
    total = 0
    for _ in range(n):
        val = int(input())
        if val <= total:
            return "false"
        total += val
    return "true"

n = int(input())
print(snowball(n))
```
### Ruby
```ruby
def snowball(n)
    total = 0
    for a in 1..n
        val = gets.chomp.to_i
        if val <= total
            return "false"
        end
        total += val
    end
    return "true"
end

n = gets.chomp.to_i
puts snowball(n)
```
### Swift
```swift
func snowball(n: Int) -> String {
    var total = 0
    for i in 1...n {
        if let input = readLine(), let val = Int(input) {
            if val <= total {
                return "false"
            }
            total += val
        }
    }
    return "true"
}

if let input = readLine(), let n = Int(input) {
    print(snowball(n: n))
}
```