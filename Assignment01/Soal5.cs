using System;
using System.Collections.Generic;
public class Soal5
{
    public static void Main(string[] args)
    {

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

        

    }
}