using System;
using System.Collections.Generic;
using System.Text;
using System.Transactions;

namespace TestBalanceTonQuizz.Testcases
{
    public class LoginTestCase : TestCase
    {
        //public string Name { get; set; }

        public LoginTestCase ()
        {
            Name = "LoginTestCase";
        }

        public override bool Execute()
        {
            Console.WriteLine("coucou");

            return true;
        }
    }
}
