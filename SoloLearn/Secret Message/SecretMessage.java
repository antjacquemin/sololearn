import java.util.Scanner;

public class SecretMessage {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        char[] phrase = input.nextLine().toLowerCase().toCharArray();
        for (char c: phrase) {
            if (c == ' ') 
                System.out.println(" ");
            else
                System.out.println((char) ('a' + 'z' - c));
        }
        input.close();
    }
}