using System;


public class Palindrome
{
    public static void Main(string[] args)
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


    }
}