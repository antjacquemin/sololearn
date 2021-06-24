# Roadrunner
Students are given homework in math, history, and geometry. The given program takes the time (in minutes) spent on each subject as input.
## Task
Complete the program to **calculate** and **output** the total number of hours and minutes spent on homework, each of one on a **new line**.
### Sample Input
```
35
40
39
```
### Sample Output
```
1
54
```
### Explanation
1 hour is 60 minutes.  
In this case the total amount of spent minutes is 114 (35+40+39), which is equal tov 1 hour (the first output) and 54 minutes (the second output).
## Solutions
### Java
```java
import java.util.Scanner;

public class Program {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int math = scanner.nextInt();
        int history = scanner.nextInt();
        int geometry = scanner.nextInt();
        int total = math + history + geometry;
        System.out.println(total / 60);
        System.out.println(total % 60);
        scanner.close();
    }
} 
```