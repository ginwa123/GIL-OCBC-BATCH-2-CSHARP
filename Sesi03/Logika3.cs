using System;

public class Logika3
{
    public static void Main(string[] args)
    {
        string username;
        string password;

        Console.Write("Username: ");
        username = Console.ReadLine();

        Console.Write("Password: ");
        password = Console.ReadLine();

        if (username == "OCBC" && password == "bootcamp")
        {
            Console.WriteLine("Anda berhasil login");
        }
        else
        {
            Console.WriteLine("Username atau Password anda salah");
        }
    }
}