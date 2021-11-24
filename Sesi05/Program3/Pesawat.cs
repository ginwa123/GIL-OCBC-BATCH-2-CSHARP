

using System;


namespace Program3
{
    public class Pesawat
    {
        public string nama;
        public int jumlahRoda;
        public string ketinggian;
        public string jumlahPenumpang;

        public void terbang()
        {
            Console.WriteLine("Pesawat dengan nama {0}, yang mempunyai jumlah roda{1}, sedang" +
                            "berada pada ketinggian {2} dengan membawa jumlah penumpang sebanyak {3}",
                             this.nama, this.jumlahRoda, this.ketinggian, this.jumlahPenumpang);
        }


    }

    class PesawatTempur : Pesawat
    {
        public void terbangTinggi()
        {
            Console.WriteLine("Pesawat tempur dengan nama {0}, yang mempunyai jumlah roda{1}, sedang" +
               "berada pada ketinggian {2} dengan membawa jumlah penumpang sebanyak {3} Akan meledakkan senjata",
               this.nama, this.jumlahRoda, this.ketinggian, this.jumlahPenumpang);
        }
    }
}