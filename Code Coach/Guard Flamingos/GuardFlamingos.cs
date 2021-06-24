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
            int length = Convert.ToInt32(Console.ReadLine()), width = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine(length + width);
        }
    }
}