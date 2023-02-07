using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Prac1_a_
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int n1, n2;
            Console.WriteLine("Enter the number 1: ");
            n1=Int32.Parse(Console.ReadLine());
            Console.WriteLine("Enter the number 2: ");
            n2 = Int32.Parse(Console.ReadLine());

            if (n1>10 && n2<10)
            {
                Console.WriteLine("N1 is Greater");
            }
            else if(n2>10 && n1<10)
            {
                Console.WriteLine("N2 is Greater");
            }
            else
            {
                Console.WriteLine("NOT ACCEPTABLE");
            }
            Console.Read();
        }
    }
}
