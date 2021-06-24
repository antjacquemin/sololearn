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
            int carrots = Convert.ToInt32(Console.ReadLine()), boxes = Convert.ToInt32(Console.ReadLine()), remainder = carrots % boxes, missing = 7 - remainder;
            if (missing <= 0)
                Console.WriteLine("Cake Time");
            else    
                Console.WriteLine($"I need to buy {missing} more");
        }
    }
}