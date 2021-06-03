# Credit Card Validator
You need to verify if the given credit card number is valid. For that you need to use the Luhn test.

Here is the Luhn formula:
1. Reverse the number.
2. Multiple every second digit by 2. 
3. Subtract 9 from all numbers higher than 9.
4. Add all the digits together.
5. Modulo 10 of that sum should be equal to 0. 
## Task
Given a credit card number, validate that it is valid using the Luhn test. Also, all valid cards must have exactly 16 digits.
### Input Format
A string containing the credit card number you need to verify.
### Output Format
A string: 'valid' in case the input is a valid credit card number (passes the Luhn test and is 16 digits long), or 'not valid', if it's not.
### Sample Input
```
4091131560563988
```
### Sample Output
```
valid
```
### Explanation
Let's run the Luhn test for our input:
```
Reverse: 8893650651311904
Multiplying the even positions by 2: 8 16 9 6 6 10 0 12 5 2 3 2 1 18 0 8
Subtract 9 from >9: 8 7 9 6 6 1 0 3 5 2 3 2 1 9 0 8
The sum: 70
70 Modulo 10 is 0.
```
The input passed the Luhn test and contains 16 digits, making it a valid credit card number.
## Solutions
### C
```c
#include <stdio.h>

int luhn(char *cardnumber) {
    int digit, total = 0;
    for (int i=0; i<16; i++) {
        digit = cardnumber[i] - '0';
        if (i % 2 == 0) {
            digit = 2 * digit;
            if (digit > 9)
                digit -= 9;
        }
        total += digit;
    }
    return total % 10 == 0;
}

int main() {
    char cardnumber[20];
    scanf("%s", &cardnumber);
    if (strlen(cardnumber) == 16 && luhn(cardnumber))
        printf("valid");
    else
        printf("not valid");
    return 0;
}
```
### C++
```cpp
#include <iostream>
using namespace std;

bool luhn(string cardnumber) {
    int digit, total = 0;
    for (int i=0; i<16; i++) {
        digit = cardnumber[i] - '0';
        if (i % 2 == 0) {
            digit = 2 * digit;
            if (digit > 9)
                digit -= 9;
        }
        total += digit;
    }
    return total % 10 == 0;
}

int main() {
    string cardnumber;
    cin >> cardnumber;
    if (cardnumber.length() == 16 && luhn(cardnumber))
        cout << "valid";
    else
        cout << "not valid";
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
        static bool luhn(string cardnumber) {
            int digit, total = 0;
            for (int i=0; i<16; i++) {
                digit = cardnumber[i] - '0';
                if (i % 2 == 0) {
                    digit = 2 * digit;
                    if (digit > 9)
                        digit -= 9;
                }
                total += digit;
            }
            return total % 10 == 0;
        }

        static void Main(string[] args)
        {
            string cardnumber = Console.ReadLine();
            if (cardnumber.Length == 16 && luhn(cardnumber))
                Console.WriteLine("valid");
            else    
                Console.WriteLine("not valid");
        }
    }
}
```
### Java
```java
import java.util.Scanner;

public class CreditCardValidator {
    
    public static boolean luhn(String cardnumber) {
        int digit, total = 0;
        for (int i=0; i<16; i++) {
            digit = Character.getNumericValue(cardnumber.charAt(i));
            if (i % 2 == 0) {
                digit = 2 * digit;
                if (digit > 9)
                    digit -= 9;
            }
            total += digit;
        }
        return total % 10 == 0;
    }

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        String cardnumber = input.nextLine();
        if (cardnumber.length() == 16 && luhn(cardnumber))
            System.out.println("valid");
        else    
            System.out.println("not valid");
        input.close();
    }
}

```
### Python
```python
def luhn(cardnumber):
    digits = list(map(int, cardnumber[::-1]))
    digits = [2 * n if i % 2 == 1 else n for i, n in enumerate(digits)]
    digits = [n - 9 if n > 9 else n for n in digits]
    return sum(digits) % 10 == 0

cardnumber = input()
if len(cardnumber) == 16 and luhn(cardnumber):
    print("valid")
else:
    print("not valid")
```
### Ruby
```ruby
def luhn(cardnumber)
    array = cardnumber.reverse.split("")
    array = array.map { |c| Integer(c) }
    array = array.each_with_index.map { |n, i| if i % 2 == 1 then 2 * n else n end }
    array = array.map { |n| if n > 9 then n - 9 else n end }
    return array.sum % 10 == 0
end

cardnumber = gets.chomp
if cardnumber.length == 16 and luhn(cardnumber)
    puts "valid"
else
    puts "not valid"
end
```
### Swift
```swift
func luhn(cardnumber: String) -> Bool {
    let array = Array(cardnumber)
    var total = 0
    for i in 0...15 {
        if var digit = Int(String(array[i])) {
            if i % 2 == 0 {
                digit = 2 * digit
                if digit > 9 {
                    digit -= 9
                }
            }
            total += digit
        }
    }
    return total % 10 == 0
}

if let cardnumber = readLine() {
    if cardnumber.count == 16 && luhn(cardnumber: cardnumber) {
        print("valid")
    } else {
        print("not valid")
    }
}
```