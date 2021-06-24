# Safety Deposit Boxes
You are robbing a bank, but you’re not taking everything. You are looking for a specific item in the safety deposit boxes and you are going to drill into each one in order to find your item. Once you find your item you can make your escape, but how long will it take you to get to that item?
## Task
Determine the amount of time it will take you to find the item you are looking for if it takes you 5 minutes to drill into each box.
### Input Format
A string that represent the items in each box that will be drilled in order (items are separated by a comma), and secondly, a string of which item you are looking for.
### Output Format
An integer of the amount of time it will take for you to find your item.
### Sample Input
```
gold,diamonds,documents,Declaration of Independence,keys
Declaration of Independence
```
### Sample Output
```
20
```
### Explanation
It will take you 20 minutes before you drill into the 4th box, which contains your item, the Declaration of Independence.
## Solutions
### C
```c
#include <stdio.h>
#include <string.h>

int main() {
    char items[1000], item[100];
    fgets(items, 1000, stdin);
    fgets(items, 100, stdin);
    int index = 0;
    char *token = strtok(items, ",");
    while (token != NULL) {
        index ++;
        if (strcmp(token, item) == 0)
            break;
        token = strtok(NULL, ",");
    }
    printf("%d", index * 5)
    return 0;
}
```
### C++
```cpp
#include <iostream>
#include <string>
using namespace std;

int main() {
    string items, item, token;
    getline(cin, items);
    getline(cin, item);
    size_t pos = 0;
    int index = 1
    while ((pos = items.find(",")) != string::npos) {
        token = items.substr(0, pos);
        if (token.compare(item) == 0)
            break;
        items.erase(0, pos + 1);
        index ++;
    }
    cout << index * 5;
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
            string[] items = Console.ReadLine().Split(",");
            string item = Console.ReadLine();
            Console.WriteLine((Array.IndexOf(items, item) + 1) * 5);
        }
    }
}
```
### Java
```java
import java.util.Scanner;
import java.util.Arrays;

public class Program {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        String[] items = input.nextLine().split(",");
        String item = input.nextLine();
        System.out.println((Arrays.asList(items).indexOf(item) + 1) * 5);
        input.close();
    }
} 
```
### Python
```python
items = input().split(",")
item = input()
print((items.index(item) + 1) * 5)
```
### Ruby
```ruby
items = gets.chomp.split(",")
item = gets.chomp
puts (items.index(item) + 1) * 5
```
### Swift
```swift
import Foundation

if let items = readLine(), let item = readLine() {
    let array = items.components(separatedBy: ",")
    if let i = array.firstIndex(of: item) {
        print((i + 1) * 5)
    }
}
```