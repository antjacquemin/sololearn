import java.util.Scanner;

public class ItsaSign {

    public static String saveSign(Scanner input) {
        String label, reverse;
        for (int i=0; i<4; i++) {
            label = input.nextLine();
            reverse = new StringBuilder(label).reverse().toString();
            if (label.equals(reverse))
                return "Open";
        }
        return "Trash";
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println(saveSign(scanner));
        scanner.close();
    }
}