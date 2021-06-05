# It's a Sign
You work in a sign factory, and the machine has started printing all of the signs backwards! The signs have already been packed into boxes of four signs each. Every letter on every sign is capitalized, so if the original sign was of a palindrome (a word or phrase that is the same backwards and forwards) you can still save those signs and not have to reprint them. Check each box to see if you should open it up to dig out the sign you can save, or if you need to just throw the whole box in the trash.
## Task
Given the four words that were supposed to be contained in each box, determine if at least one of them is of a palindrome.
### Input Format
Four strings that represent the word or phrase that was supposed to be printed on the signs inside each box.
### Output Format
A string that say 'Open' if at least one of the boxes is a palindrome or 'Trash' if all of the signs are misprinted.
### Sample Input
```
CAT
MONDAYS
RACECAR
TACOS
```
### Sample Output
```
Open
```
### Explanation
RACECAR is a palindrome and is the same forwards and backwards. You will want to open this box to get that sign out.
## Solutions
### C
```c
#include <stdio.h>
#include <string.h>

char* saveSign() {
    char label[50], reverse[50];
    int begin, end, count;
    for (int i = 0; i < 4; i++) {
        scanf("%s", label);
        strcpy(reverse, label);
        count = 0;
        while (label[count] != '\0')
            count++;
        end = count - 1;
        for (begin = 0; begin < count; begin++) {
            reverse[begin] = label[end];
            end--;
        } 
        reverse[begin] = '\0';
        if (strcmp(label, reverse) == 0)
            return "Open";
    }
    return "Trash";
}
int main() {
    printf("%s", saveSign());
    return 0;
} 
```
### C++
```cpp
#include <iostream>
using namespace std;

string saveSign() {
    string label, reverse;
    for (int i=0; i<4; i++) {
        cin >> label;
        reverse = string(label.rbegin(), label.rend());
        if (label == reverse)
            return "Open";
    }
    return "Trash";
}

int main() {
    cout << saveSign();
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

        static string saveSign() {
            string label, reverse;
            char[] charArray;
            for (int i=0; i<4; i++) {
                label = Console.ReadLine();
                charArray = label.ToCharArray();
                Array.Reverse(charArray);
                reverse = new string(charArray);
                if (label == reverse)
                    return "Open";
            }
            return "Trash";
        }

        static void Main(string[] args)
        {
            Console.WriteLine(saveSign());;
        }
    }
} 
```
### Java
```java
import java.util.Scanner;

public class Program {

    public static String saveSign(Scanner input) {
        String label, reverse;
        for (int i=0; i<4; i++) {
            label = input.nextLine();
            reverse = new StringBuilder(label).reverse().toString();
            if (label.equals(reverse))
                return "Open";
        }
        return "Trash";
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println(saveSign(scanner));
        scanner.close();
    }
}
```
### Python
```python
def saveSign():
    for _ in range(4):
        label = input()
        if label[::-1] == label:
            return "Open"
    return "Trash"

print(saveSign())
```
### Ruby
```ruby
def saveSign()
    for i in 1..4 do
        label = gets.chomp
        if label == label.reverse
            return "Open"
        end
    end
    return "Trash"
end

puts saveSign()
```
### Swift
```swift
func saveSign() -> String {
    for i in 1...4 {
        if let label = readLine() {
            let reverse = String(label.reversed())
            if label == reverse {
                return "Open"
            }
        }
    }
    return "Trash"
}

print(saveSign())
```