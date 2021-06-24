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
            int age = Convert.ToInt32(Console.ReadLine()), years = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("My twin is {0} years old and they are {1} years older than me", age + years, years);
        }
    }
} 