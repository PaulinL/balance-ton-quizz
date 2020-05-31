using OpenQA.Selenium;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Text;
using System.Transactions;
using TestBalanceTonQuizz.Configuration;
using TestBalanceTonQuizz.Entities;
using TestBalanceTonQuizz.Tools;

namespace TestBalanceTonQuizz.Testcases
{
    public class LoginTestCase : TestCase
    {
        private static readonly log4net.ILog _log = log4net.LogManager.GetLogger(typeof(LoginTestCase));

        public LoginTestCase (IWebDriver driver, string pathMap, Config config)
        {
            Name = "LoginTestCase";
            Driver = driver;
            PathMap = pathMap;
            Config = config;
        }

        /// <summary>
        /// Test method with all action to do
        /// </summary>
        /// <returns></returns>
        public override bool Execute()
        {
            Console.WriteLine("Start Testcase Login");

            // Button "S'inscrire"
            var buttonSuscribe = new WebElement("ButtonSubscribe", PathMap);
            var buttonSuscribeSearched = WebElementManager.FindFirstElement(Driver, buttonSuscribe);
            if (buttonSuscribeSearched != null)
            {
                buttonSuscribeSearched.Click();
                _log.Info("Button \"Suscribe\" found and clicked");
            }
            else
            {
                _log.Error("Can't found button 'S'inscrire'");
                return false;
            }

            // field Username
            var fieldSuscribe = new WebElement("field_username", PathMap);
            var fieldSuscribeSearched = WebElementManager.FindFirstElement(Driver, fieldSuscribe);
            if (fieldSuscribeSearched != null)
            {
                fieldSuscribeSearched.SendKeys(Config.Username);
                _log.Info("Field username found and value : '" + Config.Username + "' enter");
            }
            else
            {
                _log.Error("Can't found field username");
                return false;
            }

            // field Password
            var fieldPassword = new WebElement("field_password", PathMap);
            var fieldPasswordSearched = WebElementManager.FindFirstElement(Driver, fieldPassword);
            if (fieldPasswordSearched != null)
            {
                fieldPasswordSearched.SendKeys(Config.Password);
                _log.Info("Field username found and value : '" + Config.Password + "' enter");
            }
            else
            {
                _log.Error("Can't found field password");
                return false;
            }

            // field Confirm Password
            var fieldConfirmPassword = new WebElement("field_ConfirmPassword", PathMap);
            var fieldConfirmPasswordSearched = WebElementManager.FindFirstElement(Driver, fieldConfirmPassword);
            if (fieldConfirmPasswordSearched != null)
            {
                fieldConfirmPasswordSearched.SendKeys(Config.Password);
                _log.Info("Field username found and value : '" + Config.Password + "' enter");
            }
            else
            {
                _log.Error("Can't found field confirm username");
                return false;
            }

            // Button Suscribe
            var btn_suscribe = new WebElement("btn_suscribe", PathMap);
            var btn_suscribe_Searched = WebElementManager.FindFirstElement(Driver, btn_suscribe);
            if (btn_suscribe_Searched != null)
            {
                btn_suscribe_Searched.Click(); ;
                _log.Info("Field username found and value : '" + Config.Password + "' enter");
            }
            else
            {
                _log.Error("Can't found button suscribe");
                return false;
            }

            return true;
        }
    }
}
