import java.util.Scanner;

public class CarrotCake {
    
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int carrots = input.nextInt();
        input.nextLine();
        int boxes = input.nextInt();
        int remainder = carrots % boxes, missing = 7 - remainder;
        if (missing <= 0)
            System.out.println("Cake Time");
        else    
            System.out.println("I need to buy " + missing + " more");
        input.close();
    }
}
