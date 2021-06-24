import java.util.Scanner;

public class GothamCity {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int nb = input.nextInt();
        if (nb < 5) 
            System.out.println("I got this!");
        else if (nb < 11)
            System.out.println("Help me Batman");
        else
            System.out.println("Good Luck out there!");
        input.close();
    }
}