# Candles
It is almost Hanukkah and the store in your town is completely out of candles! You decide to place an order online, and you talk to your friends to see who else needs candles. How many candles should you order in total for the holiday?
## Task
Determine how many candles you need to order based on how many friends ask to join your order (each friend will need 9 candles).
### Input Format
An integer that represents the number of friends that ask to order candles with you.
### Output Format
An integer that represents the total number of candles that you need to order.
### Sample Input
```
4
```
### Sample Output
```
45
```
### Explanation
If four of your friends ask you to order their candles for them, you will need 9 for each of them, and 9 for yourself. That's 45.
## Solutions
### C
```c
#include <stdio.h>

int main() {
    int friends;
    scanf("%d", &friends);
    printf("%d", 9 * (friends + 1));
    return 0;
} 
```
### C++
```cpp
#include <iostream>
using namespace std;

int main() {
    int friends;
    cin >> friends;
    cout << 9 * (friends + 1);
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
            int friends = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine(9 * (friends + 1));
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
        int friends = input.nextInt();
        System.out.println(9 * (friends + 1));
        input.close();
    }
} 
```
### Python
```python
friends = int(input())
print(9 * (friends  + 1))
```
### Ruby
```ruby
friends = gets.chomp.to_i
puts 9 * (friends + 1)
```
### Swift
```swift
if let friends = readLine(), let f = Int(friends) {
    print(9 * (f + 1))
}
```