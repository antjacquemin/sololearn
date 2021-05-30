import java.util.Scanner;

public class Balconies {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        String[] a = input.nextLine().split(","), b = input.nextLine().split(",");
        int ha = Integer.parseInt(a[0]), la = Integer.parseInt(a[1]), hb = Integer.parseInt(b[0]), lb = Integer.parseInt(b[1]);
        if (ha * la < hb * lb)
            System.out.println("Apartment B");
        else 
            System.out.println("Apartment A");
        input.close();
    }
} 