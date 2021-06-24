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
            double val, total = 0.0;
            foreach (string price in prices.Split(",")) {
                val = Convert.ToDouble(price);
                if (val < 20)
                    val *= 1.07;
                total += val;
            }
            Console.WriteLine(total);
        }
    }
} 