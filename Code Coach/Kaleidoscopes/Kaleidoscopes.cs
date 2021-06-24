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
            int kaleidoscopes = Convert.ToInt32(Console.ReadLine());
            double cost = 5 * kaleidoscopes;
            if (kaleidoscopes > 1)
                cost *= 0.9;
            cost *= 1.07;
            Console.WriteLine(Math.Round(cost, 2, MidpointRounding.AwayFromZero));
        }
    }
} 