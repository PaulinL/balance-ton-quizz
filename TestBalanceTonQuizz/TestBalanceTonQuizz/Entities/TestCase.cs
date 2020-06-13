using OpenQA.Selenium;
using System;
using System.Collections.Generic;
using TestBalanceTonQuizz.Configuration;
using TestBalanceTonQuizz.Enums;
using System.Linq;

namespace TestBalanceTonQuizz.Entities
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
        /// Start date of Testcase (for report)
        /// </summary>
        public DateTime StartDate { get; set; }
        /// <summary>
        /// End date of testcase (for report)
        /// </summary>
        public DateTime EndDate { get; set; }
        /// <summary>
        /// Result of testcase
        /// </summary>
        public Result Result { get; set; }
        /// <summary>
        /// IWebDriver for this test (web page to test)
        /// </summary>
        public IWebDriver Driver { get; set; }
        /// <summary>
        /// Path of xml file to map web element
        /// </summary>
        public string PathMap { get; set; }
        /// <summary>
        /// List of Task for this Testcase
        /// </summary>
        public List<Task> Tasks { get; set; }
        /// <summary>
        /// config loader for all TC
        /// </summary>
        public ConfigLoader ConfigLoader { get; set; }

        /// <summary>
        /// Test method with all action to do
        /// </summary>
        /// <returns></returns>
        public abstract bool Execute();

        /// <summary>
        /// To load all parameters for this testcase
        /// </summary>
        public abstract void LoadConfigTC();

        #region - Report section -

        /// <summary>
        /// Save start date of testcase
        /// </summary>
        public void StartTestCase()
        {
            StartDate = DateTime.Now;
        }

        /// <summary>
        /// Save end date of testcase
        /// </summary>
        public void CloseTestCase()
        {
            EndDate = DateTime.Now;
        }

        /// <summary>
        /// To fixe result of testcase (for report)
        /// </summary>
        public void SetResult()
        {
            if(Tasks.Select(x => x.Result.Equals(Result.PASSED)).Count() == Tasks.Count())
                Result = Result.PASSED;
            else
                Result = Result.FAILED;
        }

        #endregion
    }
}
