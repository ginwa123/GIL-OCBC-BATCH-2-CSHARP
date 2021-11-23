using System;


public class Soal1
{
    public static void Main(string[] args)
    {

        // array abjad
        char[] myLetter = {
                'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I',
                'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R',
                'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'
            };


        int inc = 0;
        Console.Write("masukkan tinggi max(26): ");
        string input = Console.ReadLine();


        int range;
        bool isNumeric = int.TryParse(input, out range);
        if (!isNumeric)
        {
            Console.WriteLine("input bukan angka");
            return;
        }

        // check kondisi nilai tinggi pyramid
        // tidak boleh lebih dari  26 dan kurang dari 1
        if (range > 26)
        {
            Console.WriteLine("Nilai tidak boleh lebih dari 26");
            return;
        }
        else if (range < 1)
        {
            Console.WriteLine("Nilai tidak boleh kurang dari 1");
            return;
        }

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

            for (int z = 0; z < inc + 1; z++)
            {
                // melakukan perulangan -> print nilai abjad 
                // untuk bagian kiri berdasarkan kondisi nilai inc
                // #####a
                // ####ab
                // ###abc
                // ##abcd
                // #abcde
                // note # adalah space
                Console.Write(myLetter[z]);

            }


            for (int x = inc - 1; x >= 0; x--)
            {
                // melakukan perulangan reverse -> print nilai abjad 
                // untuk bagian kanan berdasarkan kondisi nilai inc atau z
                // #####a
                // ####aba
                // ###abcba
                // ##abcdcba
                // #abcdedcba
                // note # adalah space
                Console.Write(myLetter[x]);
            }
            Console.WriteLine("");
            inc++;
        }

    }
}