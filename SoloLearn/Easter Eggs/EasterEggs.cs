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
            int eggs = Convert.ToInt32(Console.ReadLine()), eggsBasket = Convert.ToInt32(Console.ReadLine()), eggsFriend = Convert.ToInt32(Console.ReadLine());
            if (eggs = eggsBasket + eggsFriend)
                Console.WriteLine("Candy Time");
            else 
                Console.WriteLine("Keep Hunting");
        }
    }
} 