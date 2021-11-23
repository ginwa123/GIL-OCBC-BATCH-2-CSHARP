using System;

public class Soal2
{
    public static void Main(string[] args)
    {
        Console.Write("Masukkan Tinggi: ");

        string input = Console.ReadLine();


        int range;
        bool isNumeric = int.TryParse(input, out range);
        if (!isNumeric)
        {
            Console.WriteLine("input bukan angka");
            return;
        }


        int inc = 1;
        for (int i = range; i >= 1; i--)
        {

            for (int j = 0; j < i; j++)
            {
                // melakukan perulangan untuk print space hingga nilai range misal 5
                // #####
                // ####
                // ###
                // ##
                // #
                // note # adalah space
                Console.Write(" ");

                // kondisi -> apakah sudah berada di akhir loop ?
                if (j == i - 1)
                {
                    for (int z = 1; z < inc + 1; z++)
                    {
                        // melakukan perulangan -> print nilai angka
                        // untuk bagian kiri berdasarkan kondisi nilai inc
                        // #####1
                        // ####12
                        // ###123
                        // ##1234
                        // #12345
                        // note # adalah space
                        Console.Write(z);

                        // kondisi -> apakah sudah berada di akhir loop ?
                        if (z == inc)
                        {
                            for (int x = z - 1; x >= 1; x--)
                            {
                                // melakukan perulangan -> print nilai angka
                                // untuk bagian kiri berdasarkan kondisi nilai inc
                                // #####1
                                // ####121
                                // ###12321
                                // ##1234321
                                // #123454321
                                // note # adalah space
                                Console.Write(x);
                            }
                        }
                    }
                }
            }
            Console.WriteLine("");
            inc++;
        }

    }
}