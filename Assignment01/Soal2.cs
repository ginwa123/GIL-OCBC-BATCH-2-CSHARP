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


            }

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
            }

            for (int x = inc - 1; x >= 1; x--)
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
            Console.WriteLine("");
            inc++;
        }
    }
}