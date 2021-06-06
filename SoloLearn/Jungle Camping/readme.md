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
#include <stdio.h>
#include <string.h>

int main() {
    char sounds[1000], animals[1000];
    fgets(sounds, 1000, stdin);
    char *sound = strtok(sounds, " ");
    while (sound != NULL) {
        if (strcmp(sound, "Grr") == 0)
            strcat(animals, "Lion ");
        else if (strcmp(sound, "Rawr") == 0)
            strcat(animals, "Tiger ");
        else if (strcmp(sound, "Ssss") == 0)
            strcat(animals, "Snake ");
        else if (strcmp(sound, "Chirp") == 0)
            strcat(animals, "Bird ");
        sound = strtok(NULL, " ");
    }
    animals[strlen(animals) - 1] = 0;
    printf("%s", animals);
    return 0;
}
```
### C++
```cpp
#include <iostream>
using namespace std;

int main() {
    string sound, animals;
    while (cin >> sound) {
        if (sound == "Grr")
            animals += "Lion ";
        else if (sound == "Rawr")
            animals += "Tiger ";
        else if (sound == "Ssss")
            animals += "Snake ";
        else if (sound == "Chirp")
            animals += "Bird ";
    }
    animals.pop_back();
    cout << animals;
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
            string sounds = Console.ReadLine(), animals = "";
            foreach (string sound in sounds.Split()) {
                if (sound == "Grr")
                    animals += "Lion ";
                else if (sound == "Rawr")
                    animals += "Tiger ";
                else if (sound == "Ssss")
                    animals += "Snake ";
                else if (sound == "Chirp")
                    animals += "Bird ";
            }
            animals.Remove(animals.Length - 1);
            Console.WriteLine(animals);
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
import Foundation

if let sounds = readLine() {
    let array = sounds.components(separatedBy: " ")
    var animals = ""
    for sound in array {
        if sound == "Grr" { 
            animals += "Lion "
        } elif sound == "Rawr" {
            animals += "Tiger "
        } elif sound == "Ssss" {
            animals += "Snake "
        } elif sound == "Chirp" {
            animals += "Bird "
        }
    }
    print(animals.fropLast())
}

```