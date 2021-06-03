# Balconies
You are trying to determine which of two apartments has a larger balcony. Both balconies are rectangles, and you have the length and width, but you need the area.
## Task
Evaluate the area of two different balconies and determine which one is bigger.
### Input Format
Your inputs are two strings where the measurements for height and width are separated by a comma. The first one represents apartment A, the second represents apartment B.
### Output Format
A string that says whether apartment A or apartment B has a larger balcony.
### Sample Input
```
5,5
2,10
```
### Sample Output
```
Apartment A
```
### Explanation

## Solutions
### C
```c
#include <stdio.h>

int main() {
    int h1, l1, h2, l2;
    scanf("%d,%d", &h1, &l1);
    scanf("%d,%d", &h2, &l2);
    if (h1 * l1 < h2 * l2)
        printf("Apartment B");
    else 
        printf("Apartment A");
    return 0;
} 
```
### C++
```cpp
#include <iostream>
using namespace std;

int main() {
    int h1, l1, h2, l2;
    scanf("%d,%d", &h1, &l1);
    scanf("%d,%d", &h2, &l2);
    if (h1 * l1 < h2 * l2)
        cout << "Apartment B";
    else 
        cout << "Apartment A";
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
            string[] a = Console.ReadLine().Split(","), b = Console.ReadLine().Split(",");
            int ha = int.Parse(a[0]), la = int.Parse(a[1]), hb = int.Parse(b[0]), lb = int.Parse(b[1]);
            if (ha * la < hb * lb)
                Console.WriteLine("Apartment B");
            else 
                Console.WriteLine("Apartment A");
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
        String[] a = input.nextLine().split(","), b = input.nextLine().split(",");
        int ha = Integer.parseInt(a[0]), la = Integer.parseInt(a[1]), hb = Integer.parseInt(b[0]), lb = Integer.parseInt(b[1]);
        if (ha * la < hb * lb)
            System.out.println("Apartment B");
        else 
            System.out.println("Apartment A");
        input.close();
    }
} 
```
### Python
```python
h1, l1 = map(int, input().split(","))
h2, l2 = map(int, input().split(","))
print("Apartment ", end="")
if h1 * l1 < h2 * l2:
    print("B")
else:
    print("A")
```
### Ruby
```ruby
ha, la = gets.chomp.split(",").map(&:to_i)
hb, lb = gets.chomp.split(",").map(&:to_i)
if ha * la < hb * lb
    puts "Apartment B"
else
    puts "Apartment B"
end
```
### Swift
```swift
import Foundation

if let a = readLine(), let b = readLine() {
    let aArr = a.components(separatedBy: ",")
    let bArr = b.components(separatedBy: ",")
    if let ha = Int(aArr[0]), let la = Int(aArr[1]), let hb = Int(bArr[0]), let lb = Int(bArr[1]) {
        if ha * la < hb * lb {
            print("Apartment B")
        } else {
            print("Apartment A")
        }
    }
}
```