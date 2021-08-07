using System;
using System.Collections.Generic;
using System.Text;

namespace WebHomework
{
    class Pub
    {
        char inChar;
        public delegate void eventHandler();
        public event eventHandler inputEventAB;
       
 

        public void setVal(char inputX)
        {
            inChar = inputX;
            if(inChar == 'a' || inChar == 'b')
            {
                inputEventAB();
            }
            else
            {
                Console.WriteLine("没有事件被触发");
            }
        }
    }
    class Sub
    {
        public void inputAB()
        {
            Console.WriteLine("输入正确");

        }
    }
    class Program6
    {
         static void Main(string[] args)
        {
            Pub pub = new Pub();
            Sub sub = new Sub();
            pub.inputEventAB += new Pub.eventHandler(sub.inputAB);
            pub.setVal(Console.ReadLine()[0] );
            pub.setVal(Console.ReadLine()[0]);
            pub.setVal(Console.ReadLine()[0]);
        }
    }
}
