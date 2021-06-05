import java.util.Scanner;

public class Security {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        String order = input.nextLine().replace("x", "");
        if (order.contains("$T") || order.contains("T$"))
            System.out.println("ALARM");
        else
            System.out.println("quiet");
        input.close();
    }
}