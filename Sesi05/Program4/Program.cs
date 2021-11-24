using System;

namespace Program4
{
    class Program
    {
        static void Main(string[] args)
        {
            OverloadingData data = new OverloadingData();
            data.print("Foxy");
            data.print(1641231231);
            Console.Read();
        }
    }
}
