using log4net;
using Newtonsoft.Json.Linq;
using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Threading;
using TestBalanceTonQuizz.Configuration;
using TestBalanceTonQuizz.Testcases;

[assembly: log4net.Config.XmlConfigurator(ConfigFile = "log4net.config")]

namespace TestBalanceTonQuizz
{
    class Program
    {
        private static readonly log4net.ILog _log = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        private static ConfigLoader _configLoader;
        private static IWebDriver driver;

        private static List<TestCase> _testcases;

        static void Main(string[] args)
        {
            // Init log file with execution
            _log.Info("====================== " + DateTime.Now.ToString("dd:MM:yyyy hh:mm:ss") + " ===================");
            _log.Info("Start Tests application");

            if (args.Count() > 2)
            {
                _log.Error("Invalid parameters");
                Help();
                return;
            }

            var jsonFile = args[args.Length - 1];
            _log.Info("Json file to follow : " + jsonFile);
            
            // load config
            _configLoader = new ConfigLoader();
            var config = _configLoader.LoadConfig(Path.Combine(Environment.CurrentDirectory, "config.xml"));

            // open navigator to site
            if(!OpenWebSite(config.Address))
            {
                _log.Error("Can't open chrome Driver");
                return;
            }
            
            // declaration of all TestCase
            _testcases = new List<TestCase>();
            _testcases.Add(new LoginTestCase(driver, Path.Combine(Environment.CurrentDirectory, "Maps", "homeMap.xml"), config));

            // play testcase
            var listTestcaseName = getAllTestCaseName(jsonFile);
            foreach(var tcName in listTestcaseName)
            {
                _testcases.First(x => x.Name.Equals(tcName)).Execute();
            }

            driver.Close();
            _log.Info("End of test");
            _log.Info("Pess any key to exit ...");
            Console.ReadKey();
            return;
        }

        /// <summary>
        /// Help message to execute programm
        /// </summary>
        static void Help()
        {
            _log.Info("Enter all parameter on file config.xml on tool directory before launch test");
            _log.Info("Parameters :");
            _log.Info("\t -c file.json");
        }

        /// <summary>
        /// To load all testcase name from json file orchestrator
        /// </summary>
        /// <param name="jsonFile"></param>
        /// <returns></returns>
        static List<string> getAllTestCaseName(string jsonFile)
        {
            List<string> testCaseFound = new List<string>();
            var text = File.ReadAllText(Path.Combine(Environment.CurrentDirectory, jsonFile));

            JObject json = JObject.Parse(text);

            foreach (var tc in json["testcases"])
            {
                _log.Info("Testcase found : " + tc.ToString());
                testCaseFound.Add(tc.ToString());
            }

            return testCaseFound;
        }

        /// <summary>
        /// Open website to test on navigator
        /// </summary>
        /// <param name="url"></param>
        public static bool OpenWebSite(string url)
        {
            try
            {
                driver = new ChromeDriver();
                driver.Navigate().GoToUrl(url);
                Thread.Sleep(2000);
                return true;
            }
            catch (Exception e)
            {
                _log.Error(e.StackTrace);
                _log.Error("Can't open chrome window to navigate to SonarQube");
                return false;
            }
        }

    }
}
