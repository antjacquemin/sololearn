import java.util.Scanner;

public class PaintCosts {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        double colors = input.nextDouble(), total = 40 + 5 * colors, tax = total / 10;
        System.out.println((int) Math.ceil(total + tax));
        input.close();
    }
}