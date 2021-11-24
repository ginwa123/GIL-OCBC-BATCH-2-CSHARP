using System;

namespace Program5
{
    public class Program
    {
        public int bilangan1;
        public int bilangan2;
        public void setBilangan(int bilangan1, int bilangan2)
        {
            this.bilangan1 = bilangan1;
            this.bilangan2 = bilangan2;
        }

        public virtual void penjumlahanperkalian()
        {
            Console.WriteLine("Overiding 1........>>>>>>>>");
            Console.WriteLine("Hasil Penjumlahan angka {0} dan angka {1} = {2}",
                             this.bilangan1, this.bilangan2, this.bilangan1 + this.bilangan2);
            Console.WriteLine("Hasil Perkalian angka {0} dan angka {1} = {2}",
                             this.bilangan1, this.bilangan2, this.bilangan1 * this.bilangan2);
        }


    }


}
