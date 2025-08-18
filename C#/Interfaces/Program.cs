﻿namespace Interfaces
{
   
        public interface IAnimal
        {
            void MakeSound();
            void Eat(string food);
        }

        public class Dog : IAnimal
        {
            public void Eat(string food)
            {
                Console.WriteLine("Dog ate " + food);
            }

            public void MakeSound()
            {
                Console.WriteLine("Bark");
            }
        }

        public class Cat : IAnimal
        {
            public void Eat(string food)
            {
                Console.WriteLine("Cat eats " + food);
            }
            public void MakeSound()
            {
                Console.WriteLine("Meow");
            }

        }


        internal class Program
        {
            static void Main(string[] args)
            {
                Dog dog = new Dog();
                dog.MakeSound();
                dog.Eat("Treat");

                Cat cat = new Cat();
                cat.MakeSound();
                cat.Eat("Fish");


                Console.ReadKey();
            }
        }


}
