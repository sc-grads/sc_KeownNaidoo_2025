using Domain;

namespace CalculatorTest
{
    public class UnitTest1
    {
        [Fact]
        public void Sum_TwoPlusTwo_ReturnsFour()
        {
            var calculator = new Calculator();
            var result = calculator.Sum(2, 2);
            if (result != 4)
            {
                throw new Exception($"Sum(2,2) was suppose to be 4 but was {result}");
            }
        }

    }
}
