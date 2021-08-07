using System;

namespace WebHomework
{
    class student
    {
        public string Sid
        {
            get;

            set;

        }
        public string Major
        {
            get;
            set;
        }
        public string Data
        {
            get;
            set;
        }
        public override string ToString()
        {
            return "Sid : " + Sid+" Major : "+ Major + " Date: " + Data  ;
        }
    }
    class Program5
    {


        static void Main(string[] args)
        {
            student s = new student();
            s.Sid = Console.ReadLine();
            s.Major = Console.ReadLine();
            s.Data = Console.ReadLine();
            Console.WriteLine(s.ToString());

        }

    }

}


