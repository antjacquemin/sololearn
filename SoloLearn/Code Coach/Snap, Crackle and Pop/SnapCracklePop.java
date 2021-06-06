import java.util.Scanner;

public class SnapCracklePop {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int number;
        for (int i=0; i<6; i++) {
            number = input.nextInt();
            if (number % 3 == 0) 
                System.out.print("Pop ");
            else if (number % 2 == 0)
                System.out.print("Crackle ");
            else
                System.out.print("Snap ");
        }
        input.close();
    }
}