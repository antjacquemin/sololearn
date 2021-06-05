# CMYK to RGB
The CMYK color model is the standard in the printing industry and refers to the primary colors of pigment: Cyan, Magenta, Yellow, and Black. 
K stands for 'Key' since in 4-color printing the Cyan, Magenta and Yellow printing plates are carefully keyed or aligned with the key of the Black key plate.
RGB (Red, Green and Blue) is the color space for digital images.

> The combination of RGB light creates white, while the combination of CMYK inks creates black.

A CMYK color can be converted to RGB using the following equations:
```
R = 255 × (1-C) × (1-K)
G = 255 × (1-M) × (1-K)
B = 255 × (1-Y) × (1-K)
```

> Remember, each component of a RGB color is in the range of [0, 255], so the resulting decimal numbers should be rounded to the nearest integers.
## Task
Given a color in CMYK format, output the corresponding RGB color. 
### Input Format
4 decimal numbers in the range of [0, 1], representing Cyan, Magenta, Yellow and Black. 
### Output Format
A string, representing the corresponding RGB color, each component separated by commas.
### Sample Input
```
0.4
0.49
0.552
0.36
```
### Sample Output
```
98,83,73
```
### Explanation
cmyk(0.4, 0.49, 0.552, 0.36) corresponds to rgb(98, 83, 73).
## Solutions
### C
```c
#include <stdio.h>
#include <math.h>

int main() {
    double cmyk[4];
    for (int i=0; i<4; i++)
        scanf("%f", &cmyk[i]);
    int rgb[3];
    for (int i=0; i<3; i++)
        rgb[i] = round(255 * (1 - cmyk[i]) * (1 - cmyk[3]));
    printf("%d,%d,%d", rgb[0], rgb[1], rgb[2]);
    return 0;
}
```
### C++
```cpp
#include <iostream>
#include <cmath>
using namespace std;

int main() {
    double cmyk[4];
    for (size_t i=0; i<4; i++)
        cin >> cmyk[i];
    int rgb[3];
    for (size_t i=0; i<3; i++)
        rgb[i] = round(255 * (1 - cmyk[i]) * (1 - cmyk[3]));
    cout << rgb[0] << "," << rgb[1] << "," << rgb[2];
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
            double[] cmyk = new double[4];
            for (int i=0; i<4; i++)
                cmyk[i] = Convert.ToDouble(Console.ReadLine());
            int[] rgb = new int[3];
            for (int i=0; i<3; i++)
                rgb[i] = Convert.ToInt32(Math.Round(255 * (1 - cmyk[i]) * (1 - cmyk[3]), MidpointRounding.AwayFromZero));
            Console.WriteLine(String.Join(",", rgb));
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
        double[] cmyk = new double[4];
        for (int i=0; i<4; i++)
            cmyk[i] = input.nextDouble();
        String[] rgb = new String[3];
        for (int i=0; i<3; i++)
            rgb[i] = "" + Math.round(255 * (1 - cmyk[i]) * (1 - cmyk[3]));
        System.out.println(String.join(",", rgb));
        input.close();
    }
}

```
### Python
```python
c, m, y, k = (float(input()) for _ in range(4))
r, g, b = (str(round(255 * (1 - i) * (1 - k))) for i in (c, m, y))
print(",".join((r, g, b)))
```
### Ruby
```ruby
cmyk = []
(1..4).each { || cmyk += [ gets.chomp.to_f ] }
rgb = []
(0..2).each { |i| rgb += [ (255 * (1 - cmyk[i]) * (1 - cmyk[3])).round ] }
puts rgb.join(",")
```
### Swift
```swift
import Foundation

var cmyk: [Double] = []
for i in 0...3 {
    if let value = readLine(), let v = Double(value) {
        cmyk.append(v)
    }
}
var rgb: [String] = []
for i in 0...2 {
    rgb.append(String(Int(round(255 * (1 - cmyk[i]) * (1 - cmyk[3])))))
}
print(rgb.joined(separator: ','))
```