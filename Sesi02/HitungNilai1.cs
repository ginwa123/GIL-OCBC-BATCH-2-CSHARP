using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Sesi02
{
    public class HitungNilai1
    {
        public static void Main(String[] args)
        {
            int pertama;
            int kedua;
            int ketiga;
            int total;

            double rata;

            Console.WriteLine("===Menghitung Nilai===");

            Console.Write("Masukkan nilai PERTAMA: ");
            pertama = int.Parse(Console.ReadLine());

            Console.Write("Masukkan nilai KEDUA: ");
            kedua = int.Parse(Console.ReadLine());

            Console.Write("Masukkan nilai KETIGA: ");
            ketiga = int.Parse(Console.ReadLine());

            total = pertama + kedua + ketiga;
            rata = total / 3.0;

            Console.WriteLine("Total Nilai adalah: " + total);
            Console.WriteLine("Rata Rata Nilai adalah: " + rata);
            Console.Read();
        }
    }
}