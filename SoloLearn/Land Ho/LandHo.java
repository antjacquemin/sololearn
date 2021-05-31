import java.util.Scanner;

public class LandHo {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int people = input.nextInt(), trips = people / 20;
        System.out.println(10 + trips * 20);
        input.close();
    }
} 