import java.util.Scanner;

public class SkeeBall {

    public static void main(String[] args) {
        Scanner input = new Scannner(System.in);
        int score = input.nextInt(), tickets = score / 12, cost;
        input.nextLine();
        cost = input.nextInt();
        if (tickets < cost)
            System.out.println("try again");
        else    
            System.out.println("Buy it!");
    }
}