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
            int number;
            for (int i=0; i<6; i++) {
                number = Convert.ToInt32(Console.ReadLine());
                if (number % 3 == 0) 
                    Console.Write("Pop ");
                else if (number % 2 == 0)
                    Console.Write("Crackle ");
                else
                    Console.Write("Snap ");
            }
        }
    }
} 

