using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SoloLearn
{
    class Program
    {
        static string snowball(int n) {
            int val, total = 0;
            for (int i=0; i<n; i++) {
                val = Convert.ToInt32(Console.ReadLine());
                if (val <= total)
                    return "false";
                total += val;
            }
            return "true";
        }

        static void Main(string[] args)
        {
            int n = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine(snowball(n));
        }
    }
}