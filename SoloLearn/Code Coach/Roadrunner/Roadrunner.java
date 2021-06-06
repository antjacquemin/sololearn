import java.util.Scanner;

public class Roadrunner {

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