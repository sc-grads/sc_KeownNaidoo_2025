using ClassesApp;

namespace Classes
{
    internal class Program
    {
       
        static void Main(string[] args)
        {
            Customer earl = new Customer("Earl");

            Customer frankTheTank = new Customer("FrankTheTank", "Mainstreet 1", "5551234567");

            Console.WriteLine("Name of Customer is " + earl.Name);

            Customer myCustomer = new Customer();

            Console.WriteLine("Please enter the customers Name");

            myCustomer.Name = Console.ReadLine();

            Console.WriteLine("Details about customer: " + myCustomer.Name);


            Console.ReadKey();
        }
    }
}
