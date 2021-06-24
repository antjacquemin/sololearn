# Roadrunner
Students are given homework in math, history, and geometry. The given program takes the time (in minutes) spent on each subject as input
## Task
Complete the program to **calculate** and **output** the total number of hours and minutes spent on homework, each of one one a **new line** 
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
1 hour is 60 minutes  
In this case the total amount of spent minutes is 114 (35 + 40 + 39), which is equal tov 1 hour (the first output) and 54 minutes (the second output)
## Solutions
### Java
```java
import java.util.Scanner;

public class Program {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int distance = input.nextInt();
        input.nextLine();
        int runnerSpeed = input.nextInt();
        input.nextLine();
        int coyoteSpeed = input.nextInt();
        double runnerTime = distance / runnerSpeed, coyoteTime = (distance + 50) / coyoteSpeed;
        if (runnerTime < coyoteTime)
            System.out.println("Meep Meep");
        else
            System.out.println("Yum");
        input.close();
    }
} 
```