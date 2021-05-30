import java.util.Scanner;

public class Candles {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int friends = input.nextInt();
        System.out.println(9 * (friends + 1));
        input.close();
    }
} 