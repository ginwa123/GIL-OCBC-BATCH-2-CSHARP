using System;


public class Soal4
{
    public static void Main(string[] args)
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

     
    }
}