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
    public class CreateQuizzTestcase : TestCase
    {
        private static readonly log4net.ILog _log = log4net.LogManager.GetLogger(typeof(CreateQuizzTestcase));
        private static ConfigTCCreateQuizz configTC;

        public CreateQuizzTestcase(IWebDriver driver, string pathMap)
        {
            Name = "CreateQuizzTestcase";
            Driver = driver;
            PathMap = pathMap;
            Tasks = new List<Task>();
            ConfigLoader = new ConfigLoader();
        }

        #region Config

        /// <summary>
        /// To load config for this TC
        /// </summary>
        public override void LoadConfigTC()
        {
            configTC = ConfigLoader.LoadConfigTCCreateQuizz(Path.Combine(Environment.CurrentDirectory, "config.xml"));
        }

        #endregion


        #region - Execution -

        /// <summary>
        /// Test method with all action to do
        /// </summary>
        /// <returns></returns>
        public override bool Execute()
        {
            _log.Info("Start Testcase create Quizz");

            // Button "CreateQuizz"
            var taskBtnCreateQuizz= new Task()
            {
                Name = "Btn \"Créer un quizz\"",
                Description = "Appuyer sur le bouton \"Créer un quizz\""
            };
            var buttonCreateQuizz= new WebElement("btn_create_quizz", PathMap);
            var btn_create_quizzSearched = WebElementManager.FindFirstElement(Driver, buttonCreateQuizz);
            if (btn_create_quizzSearched != null)
            {
                btn_create_quizzSearched.Click();
                _log.Info("Button \"Créer un quizz\" found and clicked");
                taskBtnCreateQuizz.SetResult(Result.PASSED);
            }
            else
            {
                _log.Error("Can't found button 'S'Créer un quizz'");
                taskBtnCreateQuizz.SetErrorMessage("Can't found button 'S'Créer un quizz'");
                taskBtnCreateQuizz.SetResult(Result.ERROR);
                return false;
            }
            taskBtnCreateQuizz.CloseTask();
            Tasks.Add(taskBtnCreateQuizz);

            // Enter title Quizz
            var taskFieldTitleQuizz = new Task()
            {
                Name = "Field Title",
                Description = "Set value on title field"
            };
            taskFieldTitleQuizz.SetValue(configTC.TitleQuizz);
            var fieldTitle = new WebElement("Field-title", PathMap);
            var fieldtitleSearched = WebElementManager.FindElements(Driver, fieldTitle).ElementAt(0);
            if (fieldtitleSearched != null)
            {
                fieldtitleSearched.SendKeys(configTC.TitleQuizz);
                _log.Info("Field title found and value : '" + configTC.TitleQuizz + "' enter");
                taskFieldTitleQuizz.SetResult(Result.PASSED);
            }
            else
            {
                _log.Error("Can't found field title");
                taskFieldTitleQuizz.SetErrorMessage("Can't found field title");
                taskFieldTitleQuizz.SetResult(Result.ERROR);
                return false;
            }
            taskFieldTitleQuizz.CloseTask();
            Tasks.Add(taskFieldTitleQuizz);

            // Enter description Quizz
            var taskFieldDescriptionQuizz = new Task()
            {
                Name = "Field Title",
                Description = "Set value on description field"
            };
            taskFieldTitleQuizz.SetValue(configTC.DescriptionQuizz);
            var fieldDescription = new WebElement("Field-description", PathMap);
            var fieldDescriptionSearched = WebElementManager.FindElements(Driver, fieldDescription).ElementAt(0);
            if (fieldDescriptionSearched != null)
            {
                fieldDescriptionSearched.SendKeys(configTC.DescriptionQuizz);
                _log.Info("Field description found and value : '" + configTC.DescriptionQuizz + "' enter");
                taskFieldDescriptionQuizz.SetResult(Result.PASSED);
            }
            else
            {
                _log.Error("Can't found field description");
                taskFieldDescriptionQuizz.SetErrorMessage("Can't found field description");
                taskFieldDescriptionQuizz.SetResult(Result.ERROR);
                return false;
            }
            taskFieldDescriptionQuizz.CloseTask();
            Tasks.Add(taskFieldDescriptionQuizz);


            // Enter first quiestion
            var taskFieldFirstQuestion = new Task()
            {
                Name = "Field first question",
                Description = "Set value of first question field"
            };
            taskFieldFirstQuestion.SetValue(configTC.Question1);
            var fieldfirstquestion = new WebElement("Field-question-1", PathMap);
            var fieldfirstquestionSearched = WebElementManager.FindElements(Driver, fieldfirstquestion).ElementAt(2);
            if (fieldfirstquestionSearched != null)
            {
                fieldfirstquestionSearched.SendKeys(configTC.Question1);
                _log.Info("Field description found and value : '" + configTC.Question1 + "' enter");
                taskFieldFirstQuestion.SetResult(Result.PASSED);
            }
            else
            {
                _log.Error("Can't found field first question");
                taskFieldFirstQuestion.SetErrorMessage("Can't found field first question");
                taskFieldFirstQuestion.SetResult(Result.ERROR);
                return false;
            }
            taskFieldFirstQuestion.CloseTask();
            Tasks.Add(taskFieldFirstQuestion);

            // Click slide button multiple answers
            var taskBtnMultipleAnswer = new Task()
            {
                Name = "MultipleAnswer",
                Description = "Click button multiple answer"
            };
            var btnMultiAnswer = new WebElement("Btn-multiple-answers", PathMap);
            var btnMultiAnswerSearched = WebElementManager.FindFirstElement(Driver, btnMultiAnswer);
            if (btnMultiAnswerSearched != null)
            {
                btnMultiAnswerSearched.Click();
                _log.Info("Button multiple answer clicked");
                taskBtnMultipleAnswer.SetResult(Result.PASSED);
            }
            else
            {
                _log.Error("Can't found button multiple answers");
                taskBtnMultipleAnswer.SetErrorMessage("Can't found button multiple answers");
                taskBtnMultipleAnswer.SetResult(Result.ERROR);
                return false;
            }
            taskBtnMultipleAnswer.CloseTask();
            Tasks.Add(taskBtnMultipleAnswer);

            // First answer, first question
            var taskEnterFirstAnswer = new Task()
            {
                Name = "First answer, first question",
                Description = "enter first answer for first question"
            };
            taskEnterFirstAnswer.SetValue(configTC.Reponse1.ElementAt(0));
            var fieldFirstAnswer = new WebElement("Field-answer-1", PathMap);
            var fieldFirstAnswerSearched = WebElementManager.FindElements(Driver, fieldFirstAnswer).ElementAt(4);
            if (fieldFirstAnswerSearched != null)
            {
                fieldFirstAnswerSearched.SendKeys(configTC.Reponse1.ElementAt(0));
                _log.Info("Field answer, question 1 value enter : " + configTC.Reponse1.ElementAt(0));
                taskEnterFirstAnswer.SetResult(Result.PASSED);
            }
            else
            {
                _log.Error("Can't found field for first answer, first question");
                taskEnterFirstAnswer.SetErrorMessage("Can't found field for first answer, first question");
                taskEnterFirstAnswer.SetResult(Result.ERROR);
                return false;
            }
            taskEnterFirstAnswer.CloseTask();
            Tasks.Add(taskEnterFirstAnswer);

            // Second answer, first question
            var taskEnterSecondAnswer = new Task()
            {
                Name = "Second answer, first question",
                Description = "enter second answer for first question"
            };
            taskEnterSecondAnswer.SetValue(configTC.Reponse1.ElementAt(1));
            var fieldSecondAnswer = new WebElement("Field-answer-1-2", PathMap);
            var fieldSecondAnswerSearched = WebElementManager.FindElements(Driver, fieldSecondAnswer).ElementAt(6);
            if (fieldSecondAnswerSearched != null)
            {
                fieldSecondAnswerSearched.SendKeys(configTC.Reponse1.ElementAt(1));
                _log.Info("second answer, question 1 value enter : " + configTC.Reponse1.ElementAt(1));
                taskEnterSecondAnswer.SetResult(Result.PASSED);
            }
            else
            {
                _log.Error("Can't found field for second answer, first question");
                taskEnterSecondAnswer.SetErrorMessage("Can't found field for second answer, first question");
                taskEnterSecondAnswer.SetResult(Result.ERROR);
                return false;
            }
            taskEnterSecondAnswer.CloseTask();
            Tasks.Add(taskEnterSecondAnswer);

            // Select correct answer
            var taskSelectCorrectAnswer = new Task()
            {
                Name = "Select answer",
                Description = "Select correct answer on list answer"
            };
            var radioBtnsCorrectAnswer = new WebElement("Radio-btn-correct-answer", PathMap);
            var radioBtnsCorrectAnswerSearched = WebElementManager.FindElements(Driver, radioBtnsCorrectAnswer);
            if (radioBtnsCorrectAnswerSearched != null)
            {
                foreach (var element in radioBtnsCorrectAnswerSearched)
                    element.Click();

                _log.Info("All answer selected as good answer");
                taskSelectCorrectAnswer.SetResult(Result.PASSED);
            }
            else
            {
                _log.Error("Cannot find all radioButton for good answer");
                taskSelectCorrectAnswer.SetErrorMessage("Cannot find all radioButton for good answer");
                taskSelectCorrectAnswer.SetResult(Result.ERROR);
                return false;
            }
            taskSelectCorrectAnswer.CloseTask();
            Tasks.Add(taskSelectCorrectAnswer);

            // Button "Continuer"
            var taskBtnContinue = new Task()
            {
                Name = "Button \"Continuer\"",
                Description = "Click on button \"Continuer\" after enter quizz questions"
            };
            var btnContinue = new WebElement("Btn-continue", PathMap);
            var temp = WebElementManager.FindElements(Driver, btnContinue);
            var btnContinueSearched = temp.ElementAt(5);
            if (btnContinueSearched != null)
            {
                btnContinueSearched.SendKeys("");
                btnContinueSearched.Click();
                _log.Info("Button \"Continuer\" clicked");
                taskBtnContinue.SetResult(Result.PASSED);
            }
            else
            {
                _log.Error("Button \"Continuer\" not found");
                taskBtnContinue.SetErrorMessage("Button \"Continuer\" not found");
                taskBtnContinue.SetResult(Result.ERROR);
                return false;
            }
            taskBtnContinue.CloseTask();
            Tasks.Add(taskBtnContinue);

            // Select a theme
            var taskselectTheme = new Task()
            {
                Name = "Select theme quizz",
                Description = "choose theme for this quizz"
            };
            taskselectTheme.SetValue(configTC.Theme);
            var cardTheme = new WebElement("theme-card-title", PathMap);
            var cardsThemeSearched = WebElementManager.FindElements(Driver, cardTheme);
            if (cardsThemeSearched != null)
            {
                foreach(var card in cardsThemeSearched)
                {
                    if (card.Text.Equals(configTC.Theme))
                    {
                        card.Click();
                        _log.Info("Radio buttn of theme " + configTC.Theme + " selected");
                        taskselectTheme.SetResult(Result.PASSED);
                    }
                }
            }
            else
            {
                _log.Error("Theme not found or not exist");
                taskselectTheme.SetErrorMessage("Theme not found or not exist");
                taskselectTheme.SetResult(Result.ERROR);
                return false;
            }
            taskselectTheme.CloseTask();
            Tasks.Add(taskselectTheme);

            // Button Créer
            var taskBtnCreate = new Task()
            {
                Name = "Button \"Créer\"",
                Description = "Click on button \"Créer\""
            };
            var btnCreate = new WebElement("Btn-create", PathMap);
            var btnCreateSearched = WebElementManager.FindElements(Driver, btnCreate).ElementAt(8);
            if (btnCreateSearched != null)
            {
                btnCreateSearched.Click();
                _log.Info("Button \"Créer\" clicked");
                taskBtnCreate.SetResult(Result.PASSED);
            }
            else
            {
                _log.Error("Button \"Créer\" not found");
                taskBtnCreate.SetErrorMessage("Button \"Créer\" not found");
                taskBtnCreate.SetResult(Result.ERROR);
                return false;
            }
            taskBtnCreate.CloseTask();
            Tasks.Add(taskBtnCreate);

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
