# New Driver's License
You have to get a new driver's license and you show up at the office at the same time as 4 other people. The office says that they will see everyone in alphabetical order and it takes 20 minutes for them to process each new license. All of the agents are available now, and they can each see one customer at a time. How long will it take for you to walk out of the office with your new license?
## Task
Given everyone's name that showed up at the same time, determine how long it will take to get your new license.
### Input Format
Your input will be a string of your name, then an integer of the number of available agents, and lastly a string of the other four names separated by spaces.
### Output Format
You will output an integer of the number of minutes that it will take to get your license.
### Sample Input
```
Eric
2
Adam Caroline Rebecca Frank
```
### Sample Output
```
40
```
### Explanation
It will take 40 minutes to get your license because you are in the second group of two to be seen by one of the two available agents.
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
import java.util.Collections;
import java.util.List;
import java.util.Arrays;

public class NewDriversLicense {

    public static void main(String args[]) {
        Scanner input = new Scanner(System.in);
        String name = input.nextLine();
        int agents = input.nextInt();
        input.nextLine();
        String names = name + " " + input.nextLine();
        input.close();
        List<String> customers = Arrays.asList(names.split(" "));
        Collections.sort(customers);
        int pos = customers.indexOf(name) + 1;
        System.out.println((pos / agents + ((pos % agents == 0) ? 0 : 1)) * 20);
    }
}
```
### Python
```python
from math import ceil

nom = input()
agents = int(input())
customers = input().split()
customers.append(nom)
customers.sort()
pos = customers.index(nom) + 1
print(ceil(pos / agents) * 20)
```
### Ruby
```ruby
```
### Swift
```swift
```