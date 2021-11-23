using System.Collections.Generic;
using System;


public class Assignment1
{

    public static void Main(string[] args)
    {

        bool isNotFinished = true;

        Assignment1 assign = new Assignment1();



        while (isNotFinished)
        {
            Console.WriteLine("=== Assignment 1 ===");
            Console.WriteLine();
            Console.WriteLine();
            Console.WriteLine();
            Console.WriteLine("Pilih menu 1 - 8");
            Console.WriteLine("1. Pyramid Abjad");
            Console.WriteLine("2. Pyramid Angka");
            Console.WriteLine("3. Factorial");
            Console.WriteLine("4. Reversed String");
            Console.WriteLine("5. Converter Angka");
            Console.WriteLine("6. Palindrome");
            Console.WriteLine("7. Tentang Saya");
            Console.WriteLine("8. Keluar");

            Console.Write("Masukkan input: ");
            string inputMenu = Console.ReadLine();

            Console.WriteLine();
            Console.WriteLine();
            Console.WriteLine();

            if (inputMenu == "1") assign.pyramidLetter();
            else if (inputMenu == "2") assign.pyramidNumber();
            else if (inputMenu == "3") assign.factorial();
            else if (inputMenu == "4") assign.reversedString();
            else if (inputMenu == "5") assign.convertNumber();
            else if (inputMenu == "6") assign.palindrome();
            else if (inputMenu == "7") assign.aboutMe();
            else if (inputMenu == "8") isNotFinished = false;
            else Console.WriteLine("Input tidak ditemukan");

        }
        Console.WriteLine("Terima kasih sudah menggunakan aplikasi ini");
    }

    public void aboutMe()
    {
        Console.WriteLine("Nama: Gilang Trisetya Indrawan");
        Console.WriteLine("Umur: 23");
        Console.WriteLine("Kode Peserta: FSDO002ONL018");
        Console.WriteLine("Asal Surabaya");
        Console.ReadLine();
    }

    public void pyramidLetter()
    {

        bool isNotFinished = true;
        // array abjad
        char[] myLetter = {
                'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i',
                'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r',
                's', 't', 'u', 'v', 'w', 'x', 'y', 'z'
            };


        while (isNotFinished)
        {
            int inc = 0;
            Console.Write("masukkan tinggi max(26): ");
            string input = Console.ReadLine();


            int range;
            bool isNumeric = int.TryParse(input, out range);
            if (!isNumeric)
            {
                Console.WriteLine("input bukan angka");
                continue;
            }

            // check kondisi nilai tinggi pyramid
            // tidak boleh lebih dari  26 dan kurang dari 1
            if (range > 26)
            {
                Console.WriteLine("Nilai tidak boleh lebih dari 26");
                continue;
            }
            else if (range < 1)
            {
                Console.WriteLine("Nilai tidak boleh kurang dari 1");
                continue;
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

                    // kondisi -> apakah sudah berada di akhir loop ?
                    if (j == i - 1)
                    {
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

                            // kondisi -> apakah sudah berada di akhir loop ?
                            if (z == inc)
                            {
                                for (int x = z - 1; x >= 0; x--)
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
                            }
                        }
                    }
                }
                Console.WriteLine("");
                inc++;
            }

            Console.Write("Lanjut ? (y/n) default(y): ");
            string inputMenu = Console.ReadLine();
            if (inputMenu == "n") isNotFinished = false;
        }
    }

    public void pyramidNumber()
    {

        bool isNotFinished = true;

        while (isNotFinished)
        {
            Console.Write("Masukkan Tinggi: ");

            string input = Console.ReadLine();


            int range;
            bool isNumeric = int.TryParse(input, out range);
            if (!isNumeric)
            {
                Console.WriteLine("input bukan angka");
                continue;
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
            Console.Write("Lanjut ? (y/n) default(y): ");
            string inputMenu = Console.ReadLine();
            if (inputMenu == "n") isNotFinished = false;
        }

    }

    public void factorial()
    {

        bool isNotFinished = true;

        while (isNotFinished)
        {
            Console.Write("Masukkan angka: ");

            string input = Console.ReadLine();

            int range;
            bool isNumeric = int.TryParse(input, out range);
            if (!isNumeric)
            {
                Console.WriteLine("input bukan angka");
                continue;
            }

            double result = 1;
            for (int i = range; i >= 1; i--)
            {
                // melakukan perulangan reverse -> berdasarkan nilai range misal 5
                // loop 1    nilai i, result -> 5 * 1 = 5
                // loop 2    nilai i, result -> 4 * 5 = 20
                // loop 3    nilai i, result -> 3 * 20 = 60
                // loop 4    nilai i, result -> 2 * 60 = 120
                // loop 5    nilai i, result -> 1 * 120 = 120
                result = result * i;
            }
            Console.WriteLine("Nilai factorial dari " + range + " adalah " + result);

            Console.Write("Lanjut ? (y/n) default(y): ");
            string inputMenu = Console.ReadLine();
            if (inputMenu == "n") isNotFinished = false;
        }

    }

    public void reversedString()
    {

        bool isNotFinished = true;

        while (isNotFinished)
        {
            Console.Write("masukkan string: ");

            string numString = Console.ReadLine();

            string result = "";
            for (int i = numString.Length - 1; i >= 0; i--)
            {
                // melakukan perulangan reverse -> berdasarkan nilai panjang string misal string = "234"
                // loop 1       i, result -> 2, "" + "4" = "4"
                // loop 2       i, resilt -> 1, "4" + "3" = "43"
                // loop 3       i, resilt -> 0, "43" + "2" = "432"
                result = result + numString[i];
            }

            Console.WriteLine("Reversed String: " + result);

            Console.Write("Lanjut ? (y/n) default(y): ");
            string inputMenu = Console.ReadLine();
            if (inputMenu == "n") isNotFinished = false;
        }

    }

    public void convertNumber()
    {

        bool isNotFinished = true;

        // kamus angka
        Dictionary<char, string> myDict = new Dictionary<char, string>{
                { '0', "zero" },
                { '1', "one" },
                { '2', "two" },
                { '3', "three" },
                { '4', "four" },
                { '5', "five" },
                { '6', "six" },
                { '7', "seven" },
                { '8', "eight" },
                { '9', "nine" },
            };

        while (isNotFinished)
        {

            Console.Write("masukkan angka: ");

            string stringNum = Console.ReadLine();

            string result = "";

            for (int i = 0; i < stringNum.Length; i++)
            {
                // melakukan perulangan berdasarkan panjang string input
                // lalu setiap nilai char input dicocokkan dengan kamus
                // jika tidak ditemukan tambahkan nilai "?"
                char key = stringNum[i];
                string value = "";
                if (myDict.TryGetValue(key, out value)) result = result + myDict[key] + " ";
                else result = result + " ? ";

            }

            Console.WriteLine(result);

            Console.Write("Lanjut ? (y/n) default(y): ");
            string inputMenu = Console.ReadLine();
            if (inputMenu == "n") isNotFinished = false;
        }

    }

    public void palindrome()
    {
        bool isNotFinished = true;

        while (isNotFinished)
        {
            Console.Write("masukkan string: ");

            string numString1 = Console.ReadLine();

            string numString2 = "";
            for (int i = numString1.Length - 1; i >= 0; i--)
            {
                // melakukan perulangan reverse -> berdasarkan nilai panjang string misal string = "234"
                // loop 1       i, result -> 2, "" + "4" = "4"
                // loop 2       i, resilt -> 1, "4" + "3" = "43"
                // loop 3       i, resilt -> 0, "43" + "2" = "432"
                numString2 = numString2 + numString1[i];
            }

            Console.WriteLine();
            Console.WriteLine();
            Console.WriteLine("original string: " + numString1);
            Console.WriteLine("reversed string: " + numString2);

            bool isPalindrome = numString1 == numString2;

            Console.WriteLine("palindrome: " + isPalindrome);

            Console.WriteLine();
            Console.WriteLine();
            Console.WriteLine();

            Console.Write("Lanjut ? (y/n) default(y): ");
            string inputMenu = Console.ReadLine();
            if (inputMenu == "n") isNotFinished = false;
        }

    }
}