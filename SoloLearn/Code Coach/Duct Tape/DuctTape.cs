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
            int height = Convert.ToInt32(Console.ReadLine()), width = Convert.ToInt32(Console.ReadLine()), area = height * width * 2;
            Console.WriteLine(Math.Ceiling(area / 10.0));
        }
    }
} 