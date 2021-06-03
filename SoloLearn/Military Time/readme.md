# Military Time
You want to convert the time from a 12 hour clock to a 24 hour clock. If you are given the time on a 12 hour clock, you should output the time as it would appear on a 24 hour clock.
## Task
Determine if the time you are given is AM or PM, then convert that value to the way that it would appear on a 24 hour clock.
### Input Format
A string that includes the time, then a **space** and the indicator for **AM** or **PM**.
### Output Format
A string that includes the time in a 24 hour format (**XX:XX**)
### Sample Input
```
1:15 PM
```
### Sample Output
```
13:15
```
### Explanation
1:00 PM on a 12 hour clock is equivalent to 13:00 on a 24 hour clock.
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
```
### Python
```python
horaire = input().split()
temps = horaire[1]
heure = horaire[0].split(":")
heures = int(heure[0]) % 12
minutes = int(heure[1])
if temps == "PM":
    heures += 12
heures = (str(heures)).rjust(2, "0")
minutes = (str(minutes)).rjust(2, "0")
print(heures + ":" + minutes)
```
### Ruby
```ruby
```
### Swift
```swift
```