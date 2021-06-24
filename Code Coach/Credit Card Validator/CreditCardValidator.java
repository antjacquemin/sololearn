import java.util.Scanner;

public class CreditCardValidator {
    
    public static boolean luhn(String cardnumber) {
        int digit, total = 0;
        for (int i=0; i<16; i++) {
            digit = Character.getNumericValue(cardnumber.charAt(i));
            if (i % 2 == 0) {
                digit = 2 * digit;
                if (digit > 9)
                    digit -= 9;
            }
            total += digit;
        }
        return total % 10 == 0;
    }

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        String cardnumber = input.nextLine();
        if (cardnumber.length() == 16 && luhn(cardnumber))
            System.out.println("valid");
        else    
            System.out.println("not valid");
        input.close();
    }
}
