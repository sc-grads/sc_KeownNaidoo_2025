namespace Generics
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Box<int> intBox = new Box<int>();
            intBox.Content = 123;

            Box<string> strBox = new Box<string>();
            strBox.Content = "Hello, Generics!";

            Console.WriteLine(strBox.Log());

            Console.WriteLine( intBox.Log());

            Console.ReadLine();
        }
    }
}
