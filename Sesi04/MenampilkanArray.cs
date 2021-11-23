using System;

public class MenampilkanArray
{
    public static void Main(string[] args)
    {
        string[] contoh = new string[4]{
            "Motherboard", "Processor", "Power Supply", "VideoCard"
        };

        Console.WriteLine("Menampilkan semua data dalam array");
        Console.WriteLine("");

        foreach (var contoh1 in contoh)
        {
            Console.WriteLine(contoh1);
        }

        Console.Write("Press Any key to continue");


    }
}
