import java.util.Scanner;

public class HexColorCodeGenerator {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        String hexVal = "#";
        int val;
        for (int i=0; i<3; i++) {
            val = input.nextInt();
            hexVal += Integer.toHexString(val / 16);
            hexVal += Integer.toHexString(val % 16);
        }
        System.out.println(hexVal);
        input.close();
    }
}