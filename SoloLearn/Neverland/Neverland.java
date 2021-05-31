import java.util.Scanner;

public class Neverland {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int age = input.nextInt();
        input.nextLine();
        int years = input.nextInt();
        System.out.printf("My twin is %d years old and they are %d years older than me", age + years, years);
        input.close();
    }
} 