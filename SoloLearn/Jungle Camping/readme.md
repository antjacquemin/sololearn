# Jungle Camping
You are camping alone out in the jungle and you hear some animals in the dark nearby. Based on the noise they make, determine which animals they are.
## Task
You are given the noises made by different animals that you can hear in the dark, evaluate each noise to determine which animal it belongs to. Lions say '**Grr**', Tigers say '**Rawr**', Snakes say '**Ssss**', and Birds say '**Chirp**'.
### Input Format
A string that represent the noises that you hear with a space between them.
### Output Format
A string that includes each animal that you hear with a space after each one. (animals can repeat)
### Sample Input
```
Rawr Chirp Ssss
```
### Sample Output
```
Tiger Bird Snake
```
### Explanation
You heard the noise made by a tiger, then a bird, and then a snake.
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

public class Program {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        String[] sounds = input.nextLine().split(" ");
        String animals = "";
        for (String sound: sounds) {
            if (sound.equals("Grr"))
                animals += "Lion ";
            else if (sound.equals("Rawr"))
                animals += "Tiger ";
            else if (sound.equals("Ssss"))
                animals += "Snake ";
            else if (sound.equals("Chirp"))
                animals += "Bird ";
        }
        System.out.println(animals.substring(0, animals.length() - 1));
        input.close();
    }
}
```
### Python
```python
sounds = input.split()
animals = ""
for sound in sounds:
    if sound == "Grr":
        animals += "Lion "
    elif sound == "Rawr":
        animals += "Tiger "
    elif sound == "Ssss":
        animals += "Snake "
    elif sound == "Chirp":
        animals += "Bird "
print(animals[:-1])
```
### Ruby
```ruby
sounds = gets.chomp.split
animals = ""
for sound in sounds
    case sound
    when "Grr"
        animals += "Lion "
    case "Rawr"
        animals += "Tiger "
    case "Ssss"
        animals += "Snake "
    case "Chirp"
        animals += "Bird "
    end
end
puts animals[0..-2]
```
### Swift
```swift
```