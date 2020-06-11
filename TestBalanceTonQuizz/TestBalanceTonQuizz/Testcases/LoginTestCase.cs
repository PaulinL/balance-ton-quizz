using OpenQA.Selenium;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using System.Transactions;
using TestBalanceTonQuizz.Configuration;
using TestBalanceTonQuizz.Entities;
using TestBalanceTonQuizz.Enums;
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
            Tasks = new List<Task>();
        }

        #region - Execution -

        /// <summary>
        /// Test method with all action to do
        /// </summary>
        /// <returns></returns>
        public override bool Execute()
        {
            Console.WriteLine("Start Testcase Login");

            // Button "S'inscrire"
            var taskBtnSuscribe = new Task ()
            {
                Name = "Btn \"S'inscrire\"",
                Description = "Appuyer sur le bouton \"S'inscrire\""
            };
            var buttonSuscribe = new WebElement("ButtonSubscribe", PathMap);
            var buttonSuscribeSearched = WebElementManager.FindFirstElement(Driver, buttonSuscribe);
            if (buttonSuscribeSearched != null)
            {
                buttonSuscribeSearched.Click();
                _log.Info("Button \"Suscribe\" found and clicked");
                taskBtnSuscribe.SetResult(Result.PASSED);
            }
            else
            {
                _log.Error("Can't found button 'S'inscrire'");
                taskBtnSuscribe.SetErrorMessage("Can't found button 'S'inscrire'");
                taskBtnSuscribe.SetResult(Result.ERROR);
                return false;
            }
            taskBtnSuscribe.CloseTask();
            Tasks.Add(taskBtnSuscribe);

            // field Username
            var taskFieldUsername = new Task()
            {
                Name = "Field Username",
                Description = "Set value on username field"
            };
            taskFieldUsername.SetValue(Config.Username);
            var fieldSuscribe = new WebElement("field_username", PathMap);
            var fieldSuscribeSearched = WebElementManager.FindFirstElement(Driver, fieldSuscribe);
            if (fieldSuscribeSearched != null)
            {
                fieldSuscribeSearched.SendKeys(Config.Username);
                _log.Info("Field username found and value : '" + Config.Username + "' enter");
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
            taskFieldPassword.SetValue(Config.Password);
            var fieldPassword = new WebElement("field_password", PathMap);
            var fieldPasswordSearched = WebElementManager.FindFirstElement(Driver, fieldPassword);
            if (fieldPasswordSearched != null)
            {
                fieldPasswordSearched.SendKeys(Config.Password);
                _log.Info("Field username found and value : '" + Config.Password + "' enter");
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

            // field Confirm Password
            var taskFieldConfPassword = new Task()
            {
                Name = "Field confirm password",
                Description = "Set value on username field"
            };
            taskFieldConfPassword.SetValue(Config.Password);
            var fieldConfirmPassword = new WebElement("field_ConfirmPassword", PathMap);
            var fieldConfirmPasswordSearched = WebElementManager.FindFirstElement(Driver, fieldConfirmPassword);
            if (fieldConfirmPasswordSearched != null)
            {
                fieldConfirmPasswordSearched.SendKeys(Config.Password);
                _log.Info("Field username found and value : '" + Config.Password + "' enter");
                taskFieldConfPassword.SetResult(Result.PASSED);
            }
            else
            {
                _log.Error("Can't found field confirm username");
                taskFieldConfPassword.SetErrorMessage("Can't found field confirm password");
                taskFieldConfPassword.SetResult(Result.ERROR);
                return false;
            }
            taskFieldConfPassword.CloseTask();
            Tasks.Add(taskFieldConfPassword);

            // Button Suscribe
            var taskBtnSuscribeForm = new Task()
            {
                Name = "Field Username",
                Description = "Set value on username field"
            };
            var btn_suscribe = new WebElement("btn_suscribe", PathMap);
            var btn_suscribe_Searched = WebElementManager.FindFirstElement(Driver, btn_suscribe);
            if (btn_suscribe_Searched != null)
            {
                btn_suscribe_Searched.Click();
                _log.Info("Button suscribe on form clicked");
                taskBtnSuscribeForm.SetResult(Result.PASSED);
            }
            else
            {
                _log.Error("Can't found button suscribe");
                taskBtnSuscribeForm.SetErrorMessage("Can't found button suscribe");
                taskBtnSuscribeForm.SetResult(Result.ERROR);
                return false;
            }
            taskBtnSuscribeForm.CloseTask();
            Tasks.Add(taskBtnSuscribeForm);

            // Check button disconect is displayed
            var taskCheckConnected = new Task()
            {
                Name = "Button disconnect",
                Description = "check button disconnected is displayed on main page afeter connection."
            };
            var btn_disconnect = new WebElement("btn_disconnect", PathMap);
            var btn_disconnect_Searched = WebElementManager.FindFirstElement(Driver, btn_disconnect);
            if (btn_disconnect_Searched != null && btn_disconnect_Searched.Text.Equals(" Se déconnecter "))
            {
                _log.Info("User connected");
                taskBtnSuscribeForm.SetResult(Result.PASSED);
            }
            else
            {
                _log.Error("Can't found button disconnect, user not connected");
                taskCheckConnected.SetErrorMessage("Can't found button disconnect, user not connected");
                taskCheckConnected.SetResult(Result.ERROR);
                return false;
            }
            taskCheckConnected.CloseTask();
            Tasks.Add(taskCheckConnected);

            return true;
        }

        #endregion
    }
}
