using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SoloLearn
{
    class Program
    {
        static bool luhn(string cardnumber) {
            int digit, total = 0;
            for (int i=0; i<16; i++) {
                digit = cardnumber[i] - '0';
                if (i % 2 == 0) {
                    digit = 2 * digit;
                    if (digit > 9)
                        digit -= 9;
                }
                total += digit;
            }
            return total % 10 == 0;
        }

        static void Main(string[] args)
        {
            string cardnumber = Console.ReadLine();
            if (cardnumber.Length == 16 && luhn(cardnumber))
                Console.WriteLine("valid");
            else    
                Console.WriteLine("not valid");
        }
    }
}