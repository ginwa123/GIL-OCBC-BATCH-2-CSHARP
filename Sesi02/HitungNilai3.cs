using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Sesi02
{
    public class HitungNilai3
    {
        public static void Main(String[] args)
        {
            int nilai1 = 0;
            int nilai2 = 0;

            Console.Write("Jumlah nilai1 = ");
            nilai1 = int.Parse(Console.ReadLine());

            Console.Write("Jumlah nilai2 = ");
            nilai2 = int.Parse(Console.ReadLine());

            Console.WriteLine("Hasil Perbandingan: ");

            Console.WriteLine($"nilai1 > nilai2 : {nilai1 > nilai2}");
            Console.WriteLine($"nilai1 >= nilai2 : {nilai1 > nilai2}");
            Console.WriteLine($"nilai1 < nilai2 : {nilai1 < nilai2}");
            Console.WriteLine($"nilai1 <= nilai2 : {nilai1 <= nilai2}");
            Console.WriteLine($"nilai1 == nilai2 : {nilai1 == nilai2}");
            Console.WriteLine($"nilai1 != nilai2 : {nilai1 != nilai2}");
        }
    }
}