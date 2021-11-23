using System;

public class String2
{
    public static void Main(string[] args)
    {
        string str1 = "Untuk pemrograman .NET, C# adalah #1.";
        string str2 = "Untuk pemrograman .NET, C# adalah #1.";
        string str3 = "string C# sangat tangguh.";
        string strAtas, strBawah;
        int hasilCompare, idx;

        Console.WriteLine("str1: " + str1);
        Console.WriteLine("Panjang str1: " + str1.Length);

        strBawah = str1.ToLower();
        strAtas = str1.ToUpper();
        Console.WriteLine("Versi huruf kecil dari str1:\n " + strBawah);
        Console.WriteLine("Versi huruf besar dari str1:\n " + strAtas);
        Console.WriteLine("");

        Console.WriteLine("Menampilkan str1, char demi char");
        for (int i = 0; i < str1.Length; i++)
            Console.Write(str1[i]);
        Console.WriteLine("\n");

        if (str1.Equals(str2)) Console.WriteLine("str1 == str2");
        else Console.WriteLine("str1 != str2");

        if (str1.Equals(str3)) Console.WriteLine("str1 == str3");
        else Console.WriteLine("str1 != str3");

        hasilCompare = string.Compare(str1, str3);
        if (hasilCompare == 0) Console.WriteLine("str1 dan str3 sama\n");
        if (hasilCompare < 0) Console.WriteLine("str1 kurang dari str3\n");
        else Console.WriteLine("str1 lebih besar dari str3\n");

        str2 = "Satu Dua Tiga Satu";
        idx = str2.IndexOf("Satu");
        Console.WriteLine("Indeks kemunculan pertama dari Satu: " + idx);

        idx = str2.LastIndexOf("Satu");
        Console.WriteLine("Indeks kemunculan terakhir dari Satu: " + idx);
    }
}
