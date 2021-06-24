import java.util.Scanner;

public class GuardFlamingos {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int length = input.nextInt(), width = input.nextInt();
        System.out.println(length + width);
        input.close();
    }
}