void WriteSomething()
{
    Console.WriteLine("I'm writing something!");
}

WriteSomething();

// A method that has the parameter myString of type String
void WriteSomethingSpecific(string myString)
{
    Console.WriteLine("You passed this argument to me " + myString);
}

string myUsername = "Frank";

WriteSomethingSpecific(myUsername);

Console.WriteLine("This is outside of the method");
Console.ReadKey();

