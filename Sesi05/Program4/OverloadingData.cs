using System;


namespace Program4
{
    public class OverloadingData
    {
        public string nama;
        public double nomorTelepon;
        public void print(string nama)
        {
            this.nama = nama;
            Console.WriteLine("Namanya adalah : {0}", this.nama);
        }

        public void print(double nomorTelepon)
        {
            this.nomorTelepon = nomorTelepon;
            Console.WriteLine("Nomor Hp : {0}", this.nomorTelepon);
        }
    }
}