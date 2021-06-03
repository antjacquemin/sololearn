# Digits of Pi
The constant Pi is defined as the ratio of a circle's circumference to its diameter. Pi is an irrational number, meaning that it's digits never end or repeat in any known way.
## Task
Given an integer N as input, find and output the Nth decimal digit of Pi.
### Input Format
An integer: 0<N<1000
### Output Format
An integer, representing the Nth decimal digit of Pi.
### Sample Input
```
12
```
### Sample Output
```
9
```
### Explanation
The 12th decimal digit of Pi is 9: 3.14159265358**9**793...
## Solutions
### C
```c
```
### C++
```cpp
```
### C#
```cs
```
### Java
```java
import java.util.Scanner;
import java.math.BigInteger;
 
public class DigitsPy {

    public static int pi(int dec) {
        final BigInteger TWO = BigInteger.valueOf(2), THREE = BigInteger.valueOf(3), FOUR = BigInteger.valueOf(4), SEVEN = BigInteger.valueOf(7);
        BigInteger q = BigInteger.ONE, r = BigInteger.ZERO, t = BigInteger.ONE, k = BigInteger.ONE, n = BigInteger.valueOf(3), l = BigInteger.valueOf(3), nn, nr;
        int i = 0;
        while (true) {
            if (FOUR.multiply(q).add(r).subtract(t).compareTo(n.multiply(t)) == -1) {
                if (i == dec)
                    break;
                nr = BigInteger.TEN.multiply(r.subtract(n.multiply(t)));
                n = BigInteger.TEN.multiply(THREE.multiply(q).add(r)).divide(t).subtract(BigInteger.TEN.multiply(n));
                q = q.multiply(BigInteger.TEN);
                r = nr;
                i++;
            } else {
                nr = TWO.multiply(q).add(r).multiply(l);
                nn = q.multiply(SEVEN).multiply(k).add(TWO).add(r.multiply(l)).divide(t.multiply(l));
                q = q.multiply(k);
                t = t.multiply(l);
                l = l.add(TWO);
                k = k.add(BigInteger.ONE);
                n = nn ;
                r = nr ;
            }
        }
        return n.intValue();
    }
 
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int dec = input.nextInt();
        System.out.println(pi(dec));
        input.close();
    }
}
```
### Python
```python
def pi(dec):
    i, q, r, t, k, n, l = 0, 1, 0, 1, 1, 3, 3
    while True:
        if 4 * q + r - t < n * t:
            if i == dec:
                break
            nr = 10 * (r - n * t)
            n = 10 * (3 * q + r) // t - 10 * n
            q *= 10
            r = nr
            i += 1
        else:
            nr = (2 * q + r) * l
            nn = (q * 7 * k + 2 + r * l) // (t*l)
            q *= k
            t *= l
            l += 2
            k += 1
            n = nn
            r = nr
    return n

print(pi(int(input())))
```
### Ruby
```ruby
```
### Swift
```swift
```