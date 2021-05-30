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
            string[] a = Console.ReadLine().Split(","), b = Console.ReadLine().Split(",");
            int ha = int.Parse(a[0]), la = int.Parse(a[1]), hb = int.Parse(b[0]), lb = int.Parse(b[1]);
            if (ha * la < hb * lb)
                Console.WriteLine("Apartment B");
            else 
                Console.WriteLine("Apartment A");
        }
    }
}