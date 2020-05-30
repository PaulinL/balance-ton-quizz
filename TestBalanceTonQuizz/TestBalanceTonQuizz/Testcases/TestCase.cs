using System;
using System.Collections.Generic;
using System.Text;

namespace TestBalanceTonQuizz.Testcases
{
    /// <summary>
    /// Class to define TestCase properties
    /// </summary>
    abstract public class TestCase
    {
        public int Id { get; set; }
        public string Name { get; set; }


        public abstract bool Execute();
    }
}
