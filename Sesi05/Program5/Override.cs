using System;

namespace Program5
{
    class Override : Program
    {
        public override void penjumlahanperkalian()
        {
            Console.WriteLine("Overiding 2......------->>>>>>>");
            Console.WriteLine("Hasil Pembagian angka {0} dan angka {1} = {2}",
                            this.bilangan1, this.bilangan2, this.bilangan1 / this.bilangan2);
            Console.WriteLine("Hasil Pengurangan angka {0} dan angka {1} = {2}",
                             this.bilangan1, this.bilangan2, this.bilangan1 - this.bilangan2);
        }
        public static void Main(string[] args)
        {
            Program overide = new Program();
            overide.setBilangan(10, 5);
            overide.penjumlahanperkalian();

            overide = new Override();
            overide.setBilangan(20, 5);
            overide.penjumlahanperkalian();
            Console.Read();
        }
    }
}