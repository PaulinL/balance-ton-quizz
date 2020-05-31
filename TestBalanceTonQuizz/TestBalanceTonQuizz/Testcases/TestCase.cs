using OpenQA.Selenium;
using System;
using System.Collections.Generic;
using System.Text;
using TestBalanceTonQuizz.Configuration;

namespace TestBalanceTonQuizz.Testcases
{
    /// <summary>
    /// Class to define TestCase properties
    /// </summary>
    abstract public class TestCase
    {
        /// <summary>
        /// Id of test case , number identifier
        /// </summary>
        public int Id { get; set; }
        /// <summary>
        /// Name of testcase (to enter on json file)
        /// </summary>
        public string Name { get; set; }
        /// <summary>
        /// IWebDriver for this test (web page to test)
        /// </summary>
        public IWebDriver Driver { get; set; }
        /// <summary>
        /// Path of xml file to map web element
        /// </summary>
        public string PathMap { get; set; }
        /// <summary>
        /// Configuration of tests
        /// </summary>
        public Config Config { get; set; }

        /// <summary>
        /// Test method with all action to do
        /// </summary>
        /// <returns></returns>
        public abstract bool Execute();
    }
}
