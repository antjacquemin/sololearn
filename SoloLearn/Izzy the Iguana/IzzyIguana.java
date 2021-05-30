import java.util.Scanner;

public class IzzyIguana {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        String snacks = input.nextLine();
        int total = 0;
        for (String snack: snacks.split(" ")) {
            if (snack.equals("Lettuce"))
                total += 5;
            else if (snack.equals("Carrot"))
                total += 4;
            else if (snack.equals("Mango"))
                total += 9;
        }
        if (total > 9)
            System.out.println("Come on Down!");
        else 
            System.out.println("Time to wait");
        input.close();
    }
}