import java.util.Scanner;

public class Kaleidoscopes {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int kaleidoscopes = input.nextInt();
        double cost = 5 * kaleidoscopes;
        if (kaleidoscopes > 1)
            cost *= 0.9;
        cost *= 1.07;
        System.out.println((double) Math.round(cost * 100) / 100);
        input.close();
    }
} 