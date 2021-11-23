using System;

public class Soal3
{
    public static void Main(string[] args)
    {
        Console.Write("Masukkan angka: ");

        string input = Console.ReadLine();

        int range;
        bool isNumeric = int.TryParse(input, out range);
        if (!isNumeric)
        {
            Console.WriteLine("input bukan angka");
            return;
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


    }
}