import java.util.Scanner;

public class SnowballingNumbers {

    public static String snowball(Scanner scanner) {
        int n = scanner.nextInt(), val, total = 0;
        for (int i=0; i<n; i++) {
            val = scanner.nextInt();
            if (val <= total)
                return "false";
            total += val;
        }
        return "true";
    }

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.println(snowball(input));
        input.close();
    }
}