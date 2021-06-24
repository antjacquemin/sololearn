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
            int score = Convert.ToInt32(Console.ReadLine()), tickets = score / 12, cost = Convert.ToInt32(Console.ReadLine());
            if (tickets < cost)
                Console.WriteLine("Try again");
            else    
                Console.WriteLine("Buy it!");
        }
    }
} 