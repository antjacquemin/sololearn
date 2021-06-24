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
            string orders = Console.ReadLine();
            double total = 0.0;
            foreach (string order in orders.Split()) {
                if (order == "Nachos" || order == "Pizza")
                    total += 6.0;
                else if (order == "Cheeseburger")
                    total += 10.0;
                else if (order == "Water")
                    total += 4.0;
                else
                    total += 5.0;
            }
            double tax = total * 7 / 100;
            Console.WriteLine(total + tax);
        }
    }
}