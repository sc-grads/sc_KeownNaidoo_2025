namespace ConsoleApp1_Concepts
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int num = 15;
            //Console.WriteLine(num);

            const int number = 20; // cant change

            int result = number + num;

            result = result + 10;
            result += 10; // same as the above line -= ; *= ; /= ; %=

            double mod = 5.00 % 2.00;

            bool isGreater = 5>0;

            Console.WriteLine(mod);


            //long x = 289;
            //short y = 23;

            //double Salary = 1500.99d;
            //decimal price = 15.99m;
            //float point = 18.9989f;

            //bool isRight = false;


            //string name= "john";
            //char letter = 'A';






            Console.ReadKey();
        }
    }
}
