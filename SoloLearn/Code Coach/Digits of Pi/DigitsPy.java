import java.util.Scanner;
import java.math.BigInteger;
 
public class DigitsPy {

    public static int pi(int dec) {
        final BigInteger TWO = BigInteger.valueOf(2), THREE = BigInteger.valueOf(3), FOUR = BigInteger.valueOf(4), SEVEN = BigInteger.valueOf(7);
        BigInteger q = BigInteger.ONE, r = BigInteger.ZERO, t = BigInteger.ONE, k = BigInteger.ONE, n = BigInteger.valueOf(3), l = BigInteger.valueOf(3), nn, nr;
        int i = 0;
        while (true) {
            if (FOUR.multiply(q).add(r).subtract(t).compareTo(n.multiply(t)) == -1) {
                if (i == dec)
                    break;
                nr = BigInteger.TEN.multiply(r.subtract(n.multiply(t)));
                n = BigInteger.TEN.multiply(THREE.multiply(q).add(r)).divide(t).subtract(BigInteger.TEN.multiply(n));
                q = q.multiply(BigInteger.TEN);
                r = nr;
                i++;
            } else {
                nr = TWO.multiply(q).add(r).multiply(l);
                nn = q.multiply(SEVEN).multiply(k).add(TWO).add(r.multiply(l)).divide(t.multiply(l));
                q = q.multiply(k);
                t = t.multiply(l);
                l = l.add(TWO);
                k = k.add(BigInteger.ONE);
                n = nn ;
                r = nr ;
            }
        }
        return n.intValue();
    }
 
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int dec = input.nextInt();
        System.out.println(pi(dec));
        input.close();
    }
}