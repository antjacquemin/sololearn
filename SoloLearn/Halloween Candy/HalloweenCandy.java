import java.util.Scanner;

public class HalloweenCandy {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int houses = input.nextInt();
        System.out.println(Math.round(Math.ceil(2f / houses * 100)));
        input.close();
    }
}