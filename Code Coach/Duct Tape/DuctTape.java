import java.util.Scanner;

public class DuctTape {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int height, width, area;
        height = input.nextInt();
        input.nextLine();
        width = input.nextInt();
        area = height * width * 2;
        System.out.println((int)Math.ceil(area / 10.0));
        input.close();
    }
} 