# Hex Color Code Generator
You are starting a new company and unfortunately that means you can no longer rely on the free hex-color code software you used to rely on. It’s time to put your skills to the test and create one from the ground up!
## Task
Create a function that accepts three integers that represent the RGB (red, green, blue) values and outputs the hex-code representation.
### Input Format
Three integers that represent RGB values.
### Output Format
The hexadecimal color code string that corresponds with the entered RGB values.
### Sample Input
```
100 
200 
233
```
### Sample Output
```
#64c8e9
```
### Explanation
Hex color codes work within 15 characters, 0-9 and a-f. RGB goes into hex color codes as such # (red) 00 (green) 00 (blue) 00. Hex color codes work by rolling over the value of 09 to 0a. Once 0f is hit (15) the following value (16) would be represented as 10 instead of (16). This means the RGB values (16, 32, 161) would evaluate to #1020a1 (10, 20, a1).
## Solutions
### C
```c
#include <stdio.h>

int main() {
    int val;
    printf("#");
    for (int i=0; i<3; i++) {
        scanf("%d", &val);
        printf("%x", val / 16);
        printf("%x", val % 16);
    }
    return 0;
}
```
### C++
```cpp
#include <iostream>
using namespace std;

int main() {
    cout << "#" << hex;
    int val;
    for (int i=0; i<3; i++) {
        cin >> val;
        cout << val / 16;
        cout << val % 16;
    }
    return 0;
}
```
### C#
```cs
```
### Java
```java
import java.util.Scanner;

public class Program {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        String hexVal = "#";
        int val;
        for (int i=0; i<3; i++) {
            val = input.nextInt();
            hexVal += Integer.toHexString(val / 16);
            hexVal += Integer.toHexString(val % 16);
        }
        System.out.println(hexVal);
        input.close();
    }
}
```
### Python
```python
hexVal = "#"
for _ in range(3):
    val = int(input())
    hexVal += hex(val // 16)[2:]
    hexVal += hex(val % 16)[2:]
print(hexVal)
```
### Ruby
```ruby
```
### Swift
```swift
```