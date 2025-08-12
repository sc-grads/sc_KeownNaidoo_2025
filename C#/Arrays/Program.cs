
//int[] arr = new int[5];
//arr[0] = 5;
//arr[1] = 7;
//arr[2] = 6;
//arr[3] = 9; 
//arr[4] = 2;

int[] arr = [2, 5, 6, 4, 8, 6];

string[] weekDays = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"];

Console.WriteLine("Lenght of the weekdays Array is: " + weekDays.Length);

//for (int i = 0; i < weekDays.Length; i++)
//{
//    Console.WriteLine(weekDays[i]);
//}

foreach (string day in weekDays)
{
    Console.WriteLine(day);
}


foreach(int x in arr)
{
    Console.WriteLine(x);
}












Console.ReadKey();