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
            int people = Convert.ToInt32(Console.ReadLine()), trips = people / 20;
            Console.WriteLine(10 + trips * 20);
        }
    }
} 