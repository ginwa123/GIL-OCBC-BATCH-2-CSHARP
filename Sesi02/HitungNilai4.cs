using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Sesi02
{
    public class HitungNilai4
    {
        public static void Main(String[] args)
        {
            Console.Write("Enter yout age: ");
            int age = int.Parse(Console.ReadLine());

            Console.Write("Password: ");
            string password = Console.ReadLine();

            bool isAdult = age > 10;
            bool isPasswordValid = password == "OCBC";

            if (isAdult && isPasswordValid)
            {
                Console.WriteLine("Welcome to the Club");
            }
            else
            {
                Console.WriteLine("Sorry, Try again");
            }

        }
    }
}