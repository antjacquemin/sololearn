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
            string sounds = Console.ReadLine(), animals = "";
            foreach (string sound in sounds.Split()) {
                if (sound == "Grr")
                    animals += "Lion ";
                else if (sound == "Rawr")
                    animals += "Tiger ";
                else if (sound == "Ssss")
                    animals += "Snake ";
                else if (sound == "Chirp")
                    animals += "Bird ";
            }
            animals.Remove(animals.Length - 1);
            Console.WriteLine(animals);
        }
    }
}
