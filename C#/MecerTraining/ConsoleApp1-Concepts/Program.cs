namespace ConsoleApp1_Concepts
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // 1. Variables
            int num = 15;
            int i = 20;
            float f = 20.5f;

            // 2. Constants
            const int number = 20; // cannot change

            // 3. Arithmetic Operations
            int result = number + num;
            result = result + 10;    // Addition
            result += 10;            // Compound assignment (also -=, *=, /=, %=)
            double mod = 5.00 % 2.00; // Modulus

            // 4. Boolean Expressions
            bool isGreater = 5 > 0;

            // 5. Type Conversion
            f = i;         // Implicit conversion (int to float)
            i = (int)f;    // Explicit conversion (float to int)

            // 6. Other Data Types (uncomment to use)
            // long x = 289;
            // short y = 23;
            // double Salary = 1500.99d;
            // decimal price = 15.99m;
            // float point = 18.9989f;
            // bool isRight = false;
            // string name = "john";
            // char letter = 'A';

            // 7. Output
            Console.WriteLine("Modulus result: " + mod);

            // 8. Conditional Statements (if-else)
            string name = "John";
            string password = "123";

            if (name == "John" && password == "123")
            {
                Console.WriteLine("Access granted.");
            }
            else if (name == "John" && password == "124")
            {
                Console.WriteLine("Access granted.");
            }
            else if (name == "John" && password == "125")
            {
                Console.WriteLine("Incorrect password.");
            }
            else
            {
                Console.WriteLine("Access denied.");
            }

            // 9. Switch Statement
            int day = 3;

            switch (day)
            {
                case 1:
                    Console.WriteLine("Monday");
                    break;
                case 2:
                    Console.WriteLine("Tuesday");
                    break;
                case 3:
                    Console.WriteLine("Wednesday");
                    break;
                case 4:
                    Console.WriteLine("Thursday");
                    break;
                case 5:
                    Console.WriteLine("Friday");
                    break;
                case 6:
                    Console.WriteLine("Saturday");
                    break;
                case 7:
                    Console.WriteLine("Sunday");
                    break;
                default:
                    Console.WriteLine("Invalid day");
                    break;
            }

            // 10. Wait for user input before closing
            Console.ReadKey();
        }
    }
}
