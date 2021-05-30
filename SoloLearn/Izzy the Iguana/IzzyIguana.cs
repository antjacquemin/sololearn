using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SoloLearn
{
    class Program
    {
        static void Main(string[] args)
        {
            string snacks = Console.ReadLine();
            int total = 0;
            foreach (string snack in snacks.Split()) {
                if (snack == "Lettuce")
                    total += 5;
                else if (snack == "Carrot")
                    total += 4;
                else if (snack == "Mango")
                    total += 9;
            }
            if (total > 9)
                Console.WriteLine("Come on Down!");
            else
                Console.WriteLine("Time to wait");
        }
    }
} 