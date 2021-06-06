# Secret Message
You are trying to send a secret message, and you've decided to encode it by replacing every letter in your message with its corresponding letter in a backwards version of the alphabet.  
What do your messages look like?
## Task
Create a program that replaces each letter in a message with its corresponding letter in a backwards version of the English alphabet.
### Input Format
A string of your message in its normal form.
### Output Format
A string of your message once you have encoded it (all lower case).
### Sample Input
```
Hello World
```
### Sample Output
```
svool dliow
```
### Explanation
If you replace each letter in 'Hello World' with the corresponding letter in a backwards version of the alphabet, you get 'svool dliow'.
## Solutions
### C
```c
#include <stdio.h>

int main() {
    char phrase[100];
    fgets(phrase, 100, stdin);
    
    for (int i = 0; phrase[i]; i++) {
        if (phrase[i] != ' ')
            phrase[i] = 'a' + 'z' - tolower(phrase[i]);
    }

    printf("%s", phrase);
    return 0;
}
```
### C++
```cpp
#include <iostream>
using namespace std;

int main() {
    string phrase;
    getline(cin, phrase);
    for (int i=0; i<phrase.length(); i++) {
        if (phrase[i] != ' ')
            phrase[i] = 'a' + 'z' - tolower(phrase[i]);
    }
    cout << phrase;
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
            string phrase = Console.ReadLine().ToLower();
            foreach(char c in phrase) {
                if (c == ' ')
                    Console.Write(" ");
                else 
                    Console.Write((char)('a' + 'z' - c));
            }
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
        char[] phrase = input.nextLine().toLowerCase().toCharArray();
        for (char c: phrase) {
            if (c == ' ') 
                System.out.print(" ");
            else
                System.out.print((char) ('a' + 'z' - c));
        }
        input.close();
    }
}
```
### Python
```python
message = input()
for word in message.lower().split():
    for char in word:
        print(chr(ord("a") + ord("z") - ord(char)), end="")
    print(" ", end="")
```
### Ruby
```ruby
phrase = gets.downcase
phrase.each_char { |c|
    if c!= " "
        print ('a'.ord + 'z'.ord - c.ord).chr
    else
        print c
    end
}
```
### Swift
```swift
if let input:String = readLine() {
    let phrase = input.lowercased()
    var scalars = Array(phrase.unicodeScalars)
    let a = Int(UnicodeScalar("a").value)
    let z = Int(UnicodeScalar("z").value)
    let space = UnicodeScalar(" ")
    for (ind, val) in scalars.enumerated() {
        if val != space {
            scalars[ind] = UnicodeScalar(a + z - Int(val.value))!
        }   
    }
    let newphrase = String(String.UnicodeScalarView(scalars))
    print(newphrase)
}
```