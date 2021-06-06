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
            string prices = Console.ReadLine();
            double val, max = 0.0;
            foreach (string price in prices.Split()) {
                val = Convert.ToDouble(price);
                if (val > max)
                    max = val;
            }
            if (max * 1.1 > 20)
                Console.WriteLine("Back to the store");
            else
                Console.WriteLine("On to the terminal");
        }
    }
} 