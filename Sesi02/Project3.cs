using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Sesi02
{
    public class Project3
    {
        public static void Main(String[] args)
        {
            string nama;
            int umur;

            Console.WriteLine("=== PROGRAM PENDAFTARAN PENDUDUK===");
            Console.Write("Masukan nama: ");
            nama =  Console.ReadLine();

            Console.Write("Masukkan Alamat: ");
            var alamat = Console.ReadLine();

            Console.Write("Masukkan umur: ");
            umur = int.Parse(Console.ReadLine());

            Console.WriteLine();
            Console.WriteLine("Terimakasih");
            Console.WriteLine("Data Berikut");
            Console.WriteLine($"Nama: {nama}");
            Console.WriteLine($"Alamat: {alamat}");
            Console.WriteLine($"Umur: {umur} tahun");
            Console.WriteLine("SUDAH DISIMPAN");


        }
    }
}