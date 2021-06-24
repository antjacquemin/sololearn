import java.util.Scanner;

public class Argentinta {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int pesos = input.nextInt() / 50;
        input.nextLine();
        int dollars = input.nextInt();
        if (pesos < dollars)
            System.out.println("Pesos");
        else
            System.out.println("Dollars");
        input.close();
    }
}