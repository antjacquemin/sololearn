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
            int fruit = Convert.ToInt32(Console.ReadLine());
            int apples = fruit / 2;
            int pies = apples / 3;
            Console.WriteLine(pies);
        }
    }
}