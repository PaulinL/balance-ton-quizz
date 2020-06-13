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
    public class SuscribeTestcase : TestCase
    {
        private static readonly log4net.ILog _log = log4net.LogManager.GetLogger(typeof(SuscribeTestcase));
        private static ConfigTCSuscribe configTC;

        public SuscribeTestcase(IWebDriver driver, string pathMap)
        {
            Name = "SuscribeTestcase";
            Driver = driver;
            PathMap = pathMap;
            Tasks = new List<Task>();
            ConfigLoader = new ConfigLoader();
        }

        #region Config

        /// <summary>
        /// Load config for this TC
        /// </summary>
        public override void LoadConfigTC()
        {
            configTC = ConfigLoader.LoadConfigTCSuscribe(Path.Combine(Environment.CurrentDirectory, "config.xml"));
        }

        #endregion

        #region - Execution -

        /// <summary>
        /// Test method with all action to do
        /// </summary>
        /// <returns></returns>
        public override bool Execute()
        {
            Console.WriteLine("Start Testcase Suscribe");

            // Button "S'inscrire"
            var taskBtnSuscribe = new Task()
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
            taskFieldUsername.SetValue(configTC.Username);
            var fieldSuscribe = new WebElement("field_username", PathMap);
            var fieldSuscribeSearched = WebElementManager.FindFirstElement(Driver, fieldSuscribe);
            if (fieldSuscribeSearched != null)
            {
                fieldSuscribeSearched.SendKeys(configTC.Username);
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
            var fieldPassword = new WebElement("field_password", PathMap);
            var fieldPasswordSearched = WebElementManager.FindFirstElement(Driver, fieldPassword);
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

            // field Confirm Password
            var taskFieldConfPassword = new Task()
            {
                Name = "Field confirm password",
                Description = "Set value on username field"
            };
            taskFieldConfPassword.SetValue(configTC.Password);
            var fieldConfirmPassword = new WebElement("field_ConfirmPassword", PathMap);
            var fieldConfirmPasswordSearched = WebElementManager.FindFirstElement(Driver, fieldConfirmPassword);
            if (fieldConfirmPasswordSearched != null)
            {
                fieldConfirmPasswordSearched.SendKeys(configTC.Password);
                _log.Info("Field username found and value : '" + configTC.Password + "' enter");
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

            return true;
        }

        #endregion
    }
}
