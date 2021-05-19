import java.util.Scanner;

public class Security {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        String ordre = input.nextLine().replace("x", "");
        if (ordre.contains("$T") || ordre.contains("T$"))
            System.out.println("ALARM");
        else
            System.out.println("quiet");
        input.close();
    }
}