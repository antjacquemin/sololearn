import java.util.Scanner;

public class BallparkOrders {
    
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        String orders = input.nextLine();
        double total = 0.0;
        for (String order: orders.split(" ")) {
            if (order.equals("Nachos") || order.equals("Pizza"))
                total += 6.0;
            else if (order.equals("Pizza"))
                total += 10.0;
            else if (order.equals("Water"))
                total += 4.0;
            else
                total += 5.0;
        }
        double tax = total * 7 / 100;   
        System.out.println(total + tax);
        input.close();
    }
}
