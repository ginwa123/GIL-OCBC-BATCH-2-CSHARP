using System;

public class String3
{
    public static void Main(string[] args)
    {
        string[] str = { "Ini", "adalah", "sebuah", "test." };
        Console.WriteLine("Array asli: ");
        
        for (int i = 0; i < str.Length; i++)
            Console.Write(str[i] + " ");

        str[1] = "merupakan";
        str[3] = "test, juga!";
        Console.WriteLine("\n\nArray termodifikasi: ");

        for (int i = 0; i < str.Length; i++)
            Console.Write(str[i] + " ");
    }
}
