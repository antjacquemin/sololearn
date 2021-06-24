import java.util.Scanner;

public class DutyFree {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        double price, max = 0.0;
        while (input.hasNext()) {
            price = input.nextDouble();
            if (price > max)
                max = price;
        }
        if (max * 1.1 > 20)
            System.out.println("Back to the store");
        else 
            System.out.println("On to the terminal");
        input.close();
    }
}