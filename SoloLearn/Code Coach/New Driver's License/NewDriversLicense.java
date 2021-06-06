import java.util.Scanner;
import java.util.Collections;
import java.util.List;
import java.util.Arrays;

public class NewDriversLicense {

    public static void main(String args[]) {
        Scanner input = new Scanner(System.in);
        String name = input.nextLine();
        int agents = input.nextInt();
        input.nextLine();
        String names = name + " " + input.nextLine();
        input.close();
        List<String> customers = Arrays.asList(names.split(" "));
        Collections.sort(customers);
        int pos = customers.indexOf(name) + 1;
        System.out.println((pos / agents + ((pos % agents == 0) ? 0 : 1)) * 20);
    }
}