import java.util.Scanner;
import java.util.Arrays;

public class SafetyDepositBoxes {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        String[] items = input.nextLine().split(",");
        String item = input.nextLine();
        System.out.println((Arrays.asList(items).indexOf(item) + 1) * 5);
        input.close();
    }
} 