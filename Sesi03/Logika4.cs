using System;


public class Logika4
{
    public static void Main(string[] args)
    {
        double nilai;

        Console.Write("Nilai : ");

        nilai = Convert.ToDouble(Console.ReadLine());
        if (nilai >= 85)
        {
            Console.WriteLine("Kamu Mendapat grade A");
        }
        else if (nilai >= 65)
        {
            Console.WriteLine("Kamu Mendapat grade B");
        }
        else if (nilai >= 45)
        {
            Console.WriteLine("Kamu Mendapat grade C");
        }
        else if (nilai <= 25)
        {
            Console.WriteLine("Kamu Mendapat grade D");
        }
    }
}