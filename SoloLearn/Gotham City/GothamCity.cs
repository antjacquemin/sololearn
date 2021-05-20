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
            int nb = Convert.ToInt32(Console.ReadLine());
            if (nb < 5) 
                Console.WriteLine("I got this!");
            else if (nb < 11)
                Console.WriteLine("Help me Batman");
            else
                Console.WriteLine("Good Luck out there!");
        }
    }
}