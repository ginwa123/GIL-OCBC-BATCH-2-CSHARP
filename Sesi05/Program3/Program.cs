using System;

namespace Program3
{
    class Program
    {
        static void Main(string[] args)
        {
            Pesawat pesawat = new Pesawat();
            PesawatTempur pesawatTempur = new PesawatTempur();

            pesawat.nama = "Helly";
            pesawat.jumlahRoda = 3;
            pesawat.ketinggian = "1000 kaki";
            pesawat.jumlahPenumpang = "3 Penumpang";
            pesawatTempur.nama = "AZ400TPU";
            pesawatTempur.jumlahRoda = 4;
            pesawatTempur.ketinggian = "200 kaki";
            pesawatTempur.jumlahPenumpang = "2 Penumpang plus kopilot dan assistance";

            pesawat.terbang();
            pesawatTempur.terbangTinggi();
            Console.ReadLine();
        }
    }
}
