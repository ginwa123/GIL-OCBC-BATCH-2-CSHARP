

using System;

namespace Program1
{
    class Program
    {
        static void Main(string[] args)
        {
            Laptop laptop = new Laptop();

            Console.Write("Masukkan merek laptop: ");
            laptop.merk = Console.ReadLine();
            
            Console.Write("Masukkan memori ram: ");
            laptop.ram = int.Parse(Console.ReadLine());

            Console.Write("Masukkan memory: ");
            laptop.memory = int.Parse(Console.ReadLine());

            Console.WriteLine();
            Console.WriteLine();
            Console.WriteLine("Merk Laptop adalah {0}", laptop.merk);
            Console.WriteLine("Kapasitas Ram ada {0}", laptop.ram);
            Console.WriteLine("Kapasitas Memory ada {0}", laptop.memory);

            laptop.chatting();
            laptop.sosmed();
            laptop.onlineShop();

            Console.ReadLine();
        }
    }
}
