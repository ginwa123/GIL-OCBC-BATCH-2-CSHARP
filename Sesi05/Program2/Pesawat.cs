

using System;

namespace Program2
{
    public class Pesawat
    {
        public string nama;
        public string ketinggian;
        public void terbang()
        {
            Console.WriteLine("Pesawat dengan nama {0}, sedang take off", this.nama);
        }

        public void sudahTerbang()
        {
            Console.WriteLine("Pesawat sekarang berada pada ketinggian {0}", this.ketinggian);
        }
    }
}