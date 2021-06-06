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
            int distance = Convert.ToInt32(Console.ReadLine()), runnerSpeed = Convert.ToInt32(Console.ReadLine()), coyoteSpeed = Convert.ToInt32(Console.ReadLine());
            double runnerTime = distance / runnerSpeed, coyoteTime = (distance + 50) / coyoteSpeed;
            if (runnerTime < coyoteTime)
                Console.WriteLine("Meep Meep");
            else
                Console.WriteLine("Yum");
        }
    }
} 