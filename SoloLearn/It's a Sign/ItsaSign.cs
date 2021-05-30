using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SoloLearn
{
    class Program
    {

        static string saveSign() {
            string label, reverse;
            char[] charArray;
            for (int i=0; i<4; i++) {
                label = Console.ReadLine();
                charArray = label.ToCharArray();
                Array.Reverse(charArray);
                reverse = new string(charArray);
                if (label == reverse)
                    return "Open";
            }
            return "Trash";
        }

        static void Main(string[] args)
        {
            Console.WriteLine(saveSign());;
        }
    }
} 