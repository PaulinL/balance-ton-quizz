using OpenQA.Selenium;
using System;
using System.Collections.Generic;
using System.IO;
using TestBalanceTonQuizz.Configuration;
using TestBalanceTonQuizz.Entities;
using TestBalanceTonQuizz.Enums;
using TestBalanceTonQuizz.Tools;

namespace TestBalanceTonQuizz.Testcases
{
    public class LogoutTestcase : TestCase
    {
        private static readonly log4net.ILog _log = log4net.LogManager.GetLogger(typeof(LogoutTestcase));
        private static ConfigTCLogin configLogin;

        public LogoutTestcase(IWebDriver driver, string pathMap)
        {
            Name = "LogoutTestcase";
            Driver = driver;
            PathMap = pathMap;
            Tasks = new List<Task>();
            ConfigLoader = new ConfigLoader();
        }

        #region Config

        /// <summary>
        /// Load config for tc login
        /// </summary>
        public override void LoadConfigTC()
        {
            configLogin = ConfigLoader.LoadConfigTCLogin(Path.Combine(Environment.CurrentDirectory, "config.xml"));
        }

        #endregion  

        #region - Execution -

        /// <summary>
        /// Test method with all action to do
        /// </summary>
        /// <returns></returns>
        public override bool Execute()
        {
            Console.WriteLine("Start Testcase Logout");

            // Check button disconect is displayed
            var taskClickBtnDisconnect = new Task()
            {
                Name = "Button disconnect",
                Description = "click on button disconnect"
            };
            var btn_disconnect = new WebElement("btn_disconnect", PathMap);
            var btn_disconnect_Searched = WebElementManager.FindFirstElement(Driver, btn_disconnect);
            if (btn_disconnect_Searched != null)
            {
                btn_disconnect_Searched.Click();
                _log.Info("User disconnected");
                taskClickBtnDisconnect.SetResult(Result.PASSED);
            }
            else
            {
                _log.Error("Can't found button disconnect button, user not disconnected");
                taskClickBtnDisconnect.SetErrorMessage("Can't found button disconnect button, user not disconnected");
                taskClickBtnDisconnect.SetResult(Result.ERROR);
                return false;
            }
            taskClickBtnDisconnect.CloseTask();
            Tasks.Add(taskClickBtnDisconnect);

            return true;
        }

        #endregion
    }
}
