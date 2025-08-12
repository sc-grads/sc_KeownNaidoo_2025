// See https://aka.ms/new-console-template for more information
Console.WriteLine("Hello, World!");

// in strings \ is an "Escape Character"
// \n stands for "new line"
// \r - carriage return

//string myString = "Hi \r\nHi";

//for (int counter = 10; counter >= 0; counter--)
//{
//    Console.WriteLine("Counter is " + counter);
//    Thread.Sleep(1000);
//}

//Console.WriteLine("Enter go or stay");

//string userChoice = Console.ReadLine();

//while (userChoice == "go")
//{
//    Console.WriteLine("Go for a mile");
//    Console.WriteLine("Wanna keep going? Enter go.");
//    userChoice = Console.ReadLine();
//}
//Console.WriteLine("Finally you are staying!");

int number;

// do-while loop is a post-test loop

do
{
    Console.WriteLine("Enter a positive whole number");
    number = int.Parse(Console.ReadLine());
} while (number <= 0);
Console.WriteLine("Finally!!!");


Console.ReadKey();




