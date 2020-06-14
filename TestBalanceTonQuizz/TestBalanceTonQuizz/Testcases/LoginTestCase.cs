using OpenQA.Selenium;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using TestBalanceTonQuizz.Configuration;
using TestBalanceTonQuizz.Entities;
using TestBalanceTonQuizz.Enums;
using TestBalanceTonQuizz.Tools;

namespace TestBalanceTonQuizz.Testcases
{
    public class LoginTestCase : TestCase
    {
        private static readonly log4net.ILog _log = log4net.LogManager.GetLogger(typeof(LoginTestCase));
        private static ConfigTCLogin configTC;

        public LoginTestCase (IWebDriver driver, string pathMap)
        {
            Name = "LoginTestCase";
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
            configTC = ConfigLoader.LoadConfigTCLogin(Path.Combine(Environment.CurrentDirectory, "config.xml"));
        }

        #endregion  


        #region - Execution -

        /// <summary>
        /// Test method with all action to do
        /// </summary>
        /// <returns></returns>
        public override bool Execute()
        {
            Console.WriteLine("Start Testcase Login");

            // Button "S'inscrire"
            var taskBtnConnect = new Task ()
            {
                Name = "Btn \"Se connecter\"",
                Description = "Appuyer sur le bouton \"Se connecter\""
            };
            var buttonConnect = new WebElement("ButtonConnect", PathMap);
            var buttonConnectSearched = WebElementManager.FindElements(Driver, buttonConnect).ElementAt(1);
            if (buttonConnectSearched != null)
            {
                buttonConnectSearched.Click();
                _log.Info("Button \"Se connecter\" found and clicked");
                taskBtnConnect.SetResult(Result.PASSED);
            }
            else
            {
                _log.Error("Can't found button \"Se connecter\"");
                taskBtnConnect.SetErrorMessage("Can't found button \"Se connecter\"");
                taskBtnConnect.SetResult(Result.ERROR);
                return false;
            }
            taskBtnConnect.CloseTask();
            Tasks.Add(taskBtnConnect);

            // field Username
            var taskFieldUsername = new Task()
            {
                Name = "Field Username",
                Description = "Set value on username field"
            };
            taskFieldUsername.SetValue(configTC.Username);
            var fieldUsername = new WebElement("field_username_connect", PathMap);
            var fieldUsernameSearched = WebElementManager.FindElements(Driver, fieldUsername).ElementAt(0);
            if (fieldUsernameSearched != null)
            {
                fieldUsernameSearched.SendKeys(configTC.Username);
                _log.Info("Field username found and value : '" + configTC.Username + "' enter");
                taskFieldUsername.SetResult(Result.PASSED);
            }
            else
            {
                _log.Error("Can't found field username");
                taskFieldUsername.SetErrorMessage("Can't found field username");
                taskFieldUsername.SetResult(Result.ERROR);
                return false;
            }
            taskFieldUsername.CloseTask();
            Tasks.Add(taskFieldUsername);

            // field Password
            var taskFieldPassword = new Task()
            {
                Name = "Field Password",
                Description = "Set value on username field"
            };
            taskFieldPassword.SetValue(configTC.Password);
            var fieldPassword = new WebElement("field_password_connect", PathMap);
            var fieldPasswordSearched = WebElementManager.FindElements(Driver, fieldPassword).ElementAt(1);
            if (fieldPasswordSearched != null)
            {
                fieldPasswordSearched.SendKeys(configTC.Password);
                _log.Info("Field username found and value : '" + configTC.Password + "' enter");
                taskFieldPassword.SetResult(Result.PASSED);
            }
            else
            {
                _log.Error("Can't found field password");
                taskFieldPassword.SetErrorMessage("Can't found field password");
                taskFieldPassword.SetResult(Result.ERROR);
                return false;
            }
            taskFieldPassword.CloseTask();
            Tasks.Add(taskFieldPassword);

            // Button Suscribe
            var taskBtnSuscribeForm = new Task()
            {
                Name = "Button \"Se connecter\"",
                Description = "Click on button \"Se connecter\""
            };
            var btn_suscribe = new WebElement("Button_connexion", PathMap);
            var btn_suscribe_Searched = WebElementManager.FindElements(Driver, btn_suscribe).ElementAt(0);
            if (btn_suscribe_Searched != null)
            {
                btn_suscribe_Searched.Click();
                _log.Info("Button \"Se connecter\" on form clicked");
                taskBtnSuscribeForm.SetResult(Result.PASSED);
            }
            else
            {
                _log.Error("Can't found button \"Se connecter\"");
                taskBtnSuscribeForm.SetErrorMessage("Can't found button \"Se connecter\"");
                taskBtnSuscribeForm.SetResult(Result.ERROR);
                return false;
            }
            taskBtnSuscribeForm.CloseTask();
            Tasks.Add(taskBtnSuscribeForm);

            return true;
        }

        #endregion
    }
}
