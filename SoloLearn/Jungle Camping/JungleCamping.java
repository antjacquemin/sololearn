import java.util.Scanner;

public class GuardFlamingos {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        String[] sounds = input.nextLine().split(" ");
        String animals = "";
        for (String sound: sounds) {
            if (sound.equals("Grr"))
                animals += "Lion ";
            else if (sound.equals("Rawr"))
                animals += "Tiger ";
            else if (sound.equals("Ssss"))
                animals += "Snake ";
            else if (sound.equals("Chirp"))
                animals += "Bird ";
        }
        System.out.println(animals.substring(0, animals.length() - 1));
        input.close();
    }
}