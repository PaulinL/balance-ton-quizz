using OpenQA.Selenium;
using System;
using System.Collections.Generic;
using System.IO;
using System.Threading;
using TestBalanceTonQuizz.Configuration;
using TestBalanceTonQuizz.Entities;
using TestBalanceTonQuizz.Enums;
using TestBalanceTonQuizz.Tools;

namespace TestBalanceTonQuizz.Testcases
{
    public class ReplyQuizzTestCase : TestCase
    {
        private static readonly log4net.ILog _log = log4net.LogManager.GetLogger(typeof(ReplyQuizzTestCase));
        private static ConfigTCReplayQuizz configTC;

        public ReplyQuizzTestCase(IWebDriver driver, string pathMap)
        {
            Name = "ReplyQuizzTestcase";
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
            configTC = ConfigLoader.LoadConfigTCReplayQuizz(Path.Combine(Environment.CurrentDirectory, "config.xml"));
        }

        #endregion  

        #region - Execution -

        /// <summary>
        /// Test method with all action to do
        /// </summary>
        /// <returns></returns>
        public override bool Execute()
        {
            Console.WriteLine("Start Testcase Replay Quizz");

            // Click on button Répondre for the quizz on home page
            var taskBtnReplayHomePage = new Task()
            {
                Name = "Btn \"Répondre\"",
                Description = "Appuyer sur le bouton \"Répondre\" dans la page d'acceuil"
            };
            var cardIdentifier = new WebElement("card-quizz", PathMap);
            var cardsQuizz = WebElementManager.FindElements(Driver, cardIdentifier);
            if(cardsQuizz != null)
            {
                var titleIdentifier = new WebElement("title-card-quizz", PathMap);
                var btnReplayIdentifier = new WebElement("btn_replay_home_page", PathMap);
                foreach (var card in cardsQuizz)
                {
                    var title = WebElementManager.findElementOnElement(card, titleIdentifier);
                    if (title.Text.Equals(configTC.NameQuizz))
                    {
                        WebElementManager.findElementOnElement(card, btnReplayIdentifier).Click();
                        _log.Info("Button \"Répondre\" on main page found and clicked");
                        taskBtnReplayHomePage.SetResult(Result.PASSED);
                        break;
                    }
                }
            }
            else
            {
                _log.Error("Can't found button \"Répondre\" on main page");
                taskBtnReplayHomePage.SetErrorMessage("Can't found button \"Répondre\" on main page");
                taskBtnReplayHomePage.SetResult(Result.ERROR);
                return false;
            }
            taskBtnReplayHomePage.CloseTask();
            Tasks.Add(taskBtnReplayHomePage);

            // Button "Répondre au quizz"
            Thread.Sleep(1000);
            var taskBtnReplay_secondPage = new Task()
            {
                Name = "Btn \"Répondre au quizz\"",
                Description = "Appuyer sur le bouton \"Répondre au quizz\" sur la seconde page"
            };
            var buttonReplyIdentifier = new WebElement("btn_replay_second_page", PathMap);
            var buttonReplySearched = WebElementManager.FindFirstElement(Driver, buttonReplyIdentifier);
            if (buttonReplySearched != null)
            {
                buttonReplySearched.Click();
                _log.Info("Button \"Répondre au quizz\" found and clicked");
                taskBtnReplay_secondPage.SetResult(Result.PASSED);
            }
            else
            {
                _log.Error("Can't found button \"Répondre au quizz\"");
                taskBtnReplay_secondPage.SetErrorMessage("Can't found button \"Répondre au quizz\"");
                taskBtnReplay_secondPage.SetResult(Result.ERROR);
                return false;
            }
            taskBtnReplay_secondPage.CloseTask();
            Tasks.Add(taskBtnReplay_secondPage);

            // Replay to quiestion
            Thread.Sleep(1000);
            var taskReplayQuestion = new Task()
            {
                Name = "Checkbox answers",
                Description = "Click on checkbox button to replay question"
            };
            foreach (var answer in configTC.Answer1)
                taskReplayQuestion.SetValue(answer);
            var answerIdentifier = new WebElement("answer-panel", PathMap);
            var answersSearched = WebElementManager.FindElements(Driver, answerIdentifier);
            if (answersSearched != null)
            {
                var answerTextIdentifier = new WebElement("answer-text", PathMap);
                foreach (var answer in answersSearched)
                {
                    var tempSpan = WebElementManager.findElementOnElement(answer, answerTextIdentifier);
                    _log.Info("label found '" +tempSpan.Text +"'");
                    if (configTC.Answer1.Contains(tempSpan.Text))
                    {
                        tempSpan.Click(); 
                        _log.Info("Answer " + tempSpan.Text +" selected");
                    }
                }
                _log.Info("All answers selected for this question");
                taskReplayQuestion.SetResult(Result.PASSED);
            }
            else
            {
                _log.Error("Can't found answers for this question");
                taskReplayQuestion.SetErrorMessage("Can't found answers for this question");
                taskReplayQuestion.SetResult(Result.ERROR);
                return false;
            }
            taskReplayQuestion.CloseTask();
            Tasks.Add(taskReplayQuestion);

            // Button "Terminer"
            Thread.Sleep(1000);
            var taskBtnFinish = new Task()
            {
                Name = "Btn \"Terminer\"",
                Description = "Appuyer sur le bouton \"Terminer\" après avoir selectionner les réponses"
            };
            var buttonFinishIdentifier = new WebElement("button-end", PathMap);
            var buttonFinishSearched = WebElementManager.FindFirstElement(Driver, buttonFinishIdentifier);
            if (buttonFinishSearched != null)
            {
                buttonFinishSearched.Click();
                _log.Info("Button \"Terminer\" found and clicked");
                taskBtnFinish.SetResult(Result.PASSED);
            }
            else
            {
                _log.Error("Can't found button \"Terminer\"");
                taskBtnFinish.SetErrorMessage("Can't found button \"terminer\"");
                taskBtnFinish.SetResult(Result.ERROR);
                return false;
            }
            taskBtnFinish.CloseTask();
            Tasks.Add(taskBtnFinish);

            // check score
            Thread.Sleep(1000);
            var taskCheckScore= new Task()
            {
                Name = "Check score",
                Description = "check score after replay to quizz"
            };
            var scoreIdentifier = new WebElement("score-label", PathMap);
            var scoreSearched = WebElementManager.FindFirstElement(Driver, scoreIdentifier);
            if (scoreSearched != null && scoreSearched.Text.Equals("1 / 1"))
            {
                _log.Info("Quizz completed, score is : " +scoreSearched.Text);
                taskCheckScore.SetResult(Result.PASSED);
            }
            else
            {
                _log.Error("Score not correct : " +scoreSearched.Text);
                taskCheckScore.SetErrorMessage("Score not correct : " + scoreSearched.Text);
                taskCheckScore.SetResult(Result.ERROR);
                return false;
            }
            taskCheckScore.SetValue(scoreSearched.Text);
            taskCheckScore.CloseTask();
            Tasks.Add(taskCheckScore);

            // Go home page
            var taskBtnHome = new Task()
            {
                Name = "Button \"Acceuil\"",
                Description = "Click on button \"Acceuil\""
            };
            var btnHome = new WebElement("Btn-home", PathMap);
            var btnHomeSearched = WebElementManager.FindFirstElement(Driver, btnHome);
            if (btnHomeSearched != null)
            {
                btnHomeSearched.Click();
                _log.Info("Button \"Acceuil\" clicked");
                taskBtnHome.SetResult(Result.PASSED);
            }
            else
            {
                _log.Error("Button \"Acceuil\" not found");
                taskBtnHome.SetErrorMessage("Button \"Acceuil\" not found");
                taskBtnHome.SetResult(Result.ERROR);
                return false;
            }
            taskBtnHome.CloseTask();
            Tasks.Add(taskBtnHome);

            return true;
        }

        #endregion
    }
}
