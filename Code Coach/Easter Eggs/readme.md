# Easter Eggs
You go hunting for Easter eggs with a friend. You think that you have found all of the eggs, but you want to make sure that you don't leave any behind! Compare Easter baskets with your friend to decide if you should keep hunting.
## Task
If you know the total number of eggs that were hidden and the amount in both of your baskets. Evaluate whether it is time to eat candy or keep hunting for more eggs.
### Input Format
Three integer values. The first represents the total number of eggs, the second, the amount in your basket, and lastly the amount that your friend has found.
### Output Format
A string that says 'Keep Hunting' if there are still eggs out there or 'Candy Time' if you found all the eggs.
### Sample Input
```
100
40
60
```
### Sample Output
```
Candy Time
```
### Explanation

## Solutions
### C
```c
#include <stdio.h>

int main() {
    int eggs, eggsBasket, eggsFriend;
    scanf("%d", &eggs);
    scanf("%d", &eggsBasket);
    scanf("%d", &eggsFriend);
    if (eggs = eggsBasket + eggsFriend)
        printf("Candy Time");
    else 
        printf("Keep Hunting");
    return 0;
} 
```
### C++
```cpp
#include <iostream>
using namespace std;

int main() {
    int eggs, eggsBasket, eggsFriend;
    cin >> eggs >> eggsBasket >> eggsFriend;
    if (eggs = eggsBasket + eggsFriend)
        cout << "Candy Time";
    else 
        cout << "Keep Hunting";
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
            int eggs = Convert.ToInt32(Console.ReadLine()), eggsBasket = Convert.ToInt32(Console.ReadLine()), eggsFriend = Convert.ToInt32(Console.ReadLine());
            if (eggs = eggsBasket + eggsFriend)
                Console.WriteLine("Candy Time");
            else 
                Console.WriteLine("Keep Hunting");
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
        int eggs = input.nextInt();
        input.nextLine();
        int eggsBasket = input.nextInt();
        input.nextLine();
        int eggsFriend = input.nextInt();
        if (eggs = eggsBasket + eggsFriend)
            System.out.println("Candy Time");
        else 
            System.out.println("Keep Hunting");
        input.close();
    }
} 
```
### Python
```python
if (int(input()) == int(input()) + int(input())):
    print("Candy Time")
else:
    print("Keep Hunting")
```
### Ruby
```ruby
eggs = gets.chomp.to_i
eggsBasket = gets.chomp.to_i
eggsFriend = gets.chomp.to_i
if eggs == eggsBasket + eggsFriend
    puts "Candy Time"
else
    puts "Keep Hunting"
end
```
### Swift
```swift
if let eggs = readLine(), let eggsBasket = readLine(), let eggsFriend = readLine(), let e = Int(eggs), let b = Int(eggsBasket), let f = Int(eggsFriend) {
    if e == b + f {
        print("Candy Time")
    } else {
        print("Keep Hunting")
    }
}
```