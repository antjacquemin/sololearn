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
            float colors = float.Parse(Console.ReadLine()), total = 40 + 5 * colors, tax = total / 10;
            Console.WriteLine(Convert.ToInt32(Math.Ceiling(total + tax)));
        }
    }
} 