import java.util.Scanner;

public class Hovercraft {
    
    public static void main(String[] args) {
        Scanner input = new Scannner(System.in);
        int sales = input.nextInt();
        if (sales == 7)
            System.out.println("Broke Even");
        else if (sales < 7)
            System.out.println("Loss");
        else    
            System.out.println("Profit");
    }
}
