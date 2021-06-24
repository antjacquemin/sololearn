import java.util.Scanner;

public class PrimitiveOperators {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int math = scanner.nextInt();
        int history = scanner.nextInt();
        int geometry = scanner.nextInt();
        int total = math + history + geometry;
        System.out.println(total / 60);
        System.out.println(total % 60);
        scanner.close();
    }
} 