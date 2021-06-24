import java.util.Scanner;

public class CMYKtoRGB {
    
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        double[] cmyk = new double[4];
        for (int i=0; i<4; i++)
            cmyk[i] = input.nextDouble();
        String[] rgb = new String[3];
        for (int i=0; i<3; i++)
            rgb[i] = "" + Math.round(255 * (1 - cmyk[i]) * (1 - cmyk[3]));
        System.out.println(String.join(",", rgb));
        input.close();
    }
}
