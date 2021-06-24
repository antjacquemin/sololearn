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
            string[] items = Console.ReadLine().Split(",");
            string item = Console.ReadLine();
            Console.WriteLine((Array.IndexOf(items, item) + 1) * 5);
        }
    }
}