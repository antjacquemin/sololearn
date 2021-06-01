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
            int pesos = Convert.ToInt32(Console.ReadLine()) / 50, dollars = Convert.ToInt32(Console.ReadLine());
            if (pesos < dollars)
                Console.WriteLine("Pesos");
            else
                Console.WriteLine("Dollars");
        }
    }
} 