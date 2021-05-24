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
            int sales = Convert.ToInt32(Console.ReadLine());
            if (sales == 7)
                Console.WriteLine("Broke Even");
            else if (sales < 7)
                Console.WriteLine("Loss");
            else    
                Console.WriteLine("Profit");
        }
    }
}