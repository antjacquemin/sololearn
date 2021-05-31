import java.util.Scanner;

public class EasterEggs {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int eggs = input.nextInt();
        input.nextLine();
        int eggsBasket = input.nextInt();
        input.nextLine();
        int eggsFriend = input.nextInt();
        if (eggs = eggsBasket + eggsFriend)
            System.out.println("Candy Time");
        else 
            System.out.println("Keep Hunting");
        input.close();
    }
} 