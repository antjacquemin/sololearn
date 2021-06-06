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
            double[] cmyk = new double[4];
            for (int i=0; i<4; i++)
                cmyk[i] = Convert.ToDouble(Console.ReadLine());
            int[] rgb = new int[3];
            for (int i=0; i<3; i++)
                rgb[i] = Convert.ToInt32(Math.Round(255 * (1 - cmyk[i]) * (1 - cmyk[3]), MidpointRounding.AwayFromZero));
            Console.WriteLine(String.Join(",", rgb));
        }
    }
}