import java.util.Scanner;

public class TaxFree {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in).useDelimiter(",");
        double price, total = 0.0;
        while (input.hasNext()) {
            price = input.nextDouble();
            if (price < 20)
                price *= 1.07;
            total += price;
        }
        System.out.println(total);
        input.close();
    }
}