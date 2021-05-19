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
            int yards = Convert.ToInt32(Console.ReadLine());
            if (yards > 10) 
                Console.WriteLine("High Five");
            else if (yards < 1)
                Console.WriteLine("shh");
            else
            /*
            {
                string ra = "Ra!";
                Console.WriteLine(new StringBuilder(ra.Length * yards).Insert(0, ra, yards).ToString());
            }*/
                Console.WriteLine(String.Concat(Enumerable.Repeat("Ra!", yards)));
        }
    }
}