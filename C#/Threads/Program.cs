namespace Threads
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello");
            Thread.Sleep(10000);

            Thread thread = new Thread(Test);

            thread.Start();

            new Thread(() =>
            {
                Console.WriteLine("Lambda Thread");
            }).Start();

            Console.ReadKey();
        }

        public static void Test()
        {
            Console.WriteLine("Test");
            Thread.Sleep(5000);
        }
    }
}
