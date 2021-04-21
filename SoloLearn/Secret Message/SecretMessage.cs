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
            string phrase = Console.ReadLine().ToLower();
            foreach(char c in phrase) {
                if (c == ' ')
                    Console.Write(" ");
                else 
                    Console.Write((char)('a' + 'z' - c));
            }
        }
    }
}