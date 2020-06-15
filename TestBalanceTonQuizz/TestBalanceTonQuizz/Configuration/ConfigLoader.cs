using System;
using System.Xml.Linq;

namespace TestBalanceTonQuizz.Configuration
{
    public class ConfigLoader
    {
        private static readonly log4net.ILog _log = log4net.LogManager.GetLogger(typeof(ConfigLoader));

        #region Tag label config

        private const string NODE_CONFIG = "Config";
        private const string NODE_ADDRESS = "Address";
        private const string NODE_TIMEPAUSE = "timePause";

        private const string NODE_DB = "database";
        private const string NODE_ADDRESSDB = "addressDB";
        private const string NODE_PORTDB = "portDB";
        private const string NODE_USERDB = "userDB";
        private const string NODE_PASSWORDDB = "passwordDB";
        private const string NODE_NAMEDB = "nameDB";

        private const string NODE_TESTCASES = "testcases";

        private const string NODE_SUSCRIBETC = "suscribeTestcase";

        private const string NODE_LOGINTC = "loginTestcase";
        private const string NODE_USERNAME = "Username";
        private const string NODE_PASSWORD = "Password";

        private const string NODE_CREATEQUIZZTC = "createQuizzTestcase";
        private const string NODE_TITLEQUIZZ = "title";
        private const string NODE_DESCQUIZZ = "description";
        private const string NODE_PATHPICTURE = "pathPicture";
        private const string NODE_THEME = "theme";
        private const string NODE_Q1 = "question1";
        private const string NODE_R1 = "reponse1";
        private const string NODE_R1_2 = "reponse1.2";

        private const string NODE_REPLAYQUIZZTC = "replayQuizzTestcase";
        private const string NODE_REPLAYQUIZZNAME = "nameQuizz";
        private const string NODE_REPLAYQUIZANSWER1 = "answer1";
        private const string NODE_REPLAYQUIZANSWER1_2 = "answer1-2";

        #endregion

        /// <summary>
        /// To load all configuration in file on Config object
        /// </summary>
        /// <param name="url"></param>
        /// <returns></returns>
        public Config LoadGlobalConfig(string url)
        {
            _log.Info("Load all data for test campagne");

            var doc = XDocument.Load(url);
            var root = doc.Element(NODE_CONFIG);
            if (root == null)
            {
                Console.WriteLine("Can't find root element of config");
                return null;
            }

            var config = new Config()
            {
                Address = root.Element(NODE_ADDRESS).Value,
                TimePause = Convert.ToInt32(root.Element(NODE_TIMEPAUSE).Value),
                AddressDB = root.Element(NODE_DB).Element(NODE_ADDRESSDB).Value,
                PortDB = root.Element(NODE_DB).Element(NODE_PORTDB).Value,
                UsernameDB = root.Element(NODE_DB).Element(NODE_USERDB).Value,
                PasswordDB = root.Element(NODE_DB).Element(NODE_PASSWORDDB).Value,
                NameDB = root.Element(NODE_DB).Element(NODE_NAMEDB).Value
            };

            _log.Info("All data laod of test campagne");
            return config;
        }


        #region Config testcase

        /// <summary>
        /// LoadConfig for testcase Login
        /// </summary>
        /// <param name="url"></param>
        /// <returns></returns>
        public ConfigTCLogin LoadConfigTCLogin(string url)
        {
            _log.Info("Load all data for test campagne");

            var doc = XDocument.Load(url);
            var root = doc.Element(NODE_CONFIG);
            if (root == null)
            {
                Console.WriteLine("Can't find root element of config");
                return null;
            }

            var config = new ConfigTCLogin()
            {
                Username = root.Element(NODE_TESTCASES).Element(NODE_LOGINTC).Element(NODE_USERNAME).Value,
                Password = root.Element(NODE_TESTCASES).Element(NODE_LOGINTC).Element(NODE_PASSWORD).Value
            };

            _log.Info("All data laod for TC Login");
            return config;
        }

        /// <summary>
        /// Load config for test case create quizz
        /// </summary>
        /// <param name="url"></param>
        /// <returns></returns>
        public ConfigTCCreateQuizz LoadConfigTCCreateQuizz(string url)
        {
            _log.Info("Load all data for test campagne");

            var doc = XDocument.Load(url);
            var root = doc.Element(NODE_CONFIG);
            if (root == null)
            {
                Console.WriteLine("Can't find root element of config");
                return null;
            }

            var config = new ConfigTCCreateQuizz()
            {
                TitleQuizz = root.Element(NODE_TESTCASES).Element(NODE_CREATEQUIZZTC).Element(NODE_TITLEQUIZZ).Value,
                DescriptionQuizz = root.Element(NODE_TESTCASES).Element(NODE_CREATEQUIZZTC).Element(NODE_DESCQUIZZ).Value,
                PathPicture = root.Element(NODE_TESTCASES).Element(NODE_CREATEQUIZZTC).Element(NODE_PATHPICTURE).Value,
                Theme = root.Element(NODE_TESTCASES).Element(NODE_CREATEQUIZZTC).Element(NODE_THEME).Value,
                Question1 = root.Element(NODE_TESTCASES).Element(NODE_CREATEQUIZZTC).Element(NODE_Q1).Value,
            };

            config.Reponse1.Add(root.Element(NODE_TESTCASES).Element(NODE_CREATEQUIZZTC).Element(NODE_R1).Value);
            config.Reponse1.Add(root.Element(NODE_TESTCASES).Element(NODE_CREATEQUIZZTC).Element(NODE_R1_2).Value);

            _log.Info("All data laod for TC CreateQuizz");
            return config;
        }

        /// <summary>
        /// Load config fot TC Suscribe
        /// </summary>
        /// <param name="url"></param>
        /// <returns></returns>
        public ConfigTCSuscribe LoadConfigTCSuscribe(string url)
        {
            _log.Info("Load all data for test campagne");

            var doc = XDocument.Load(url);
            var root = doc.Element(NODE_CONFIG);
            if (root == null)
            {
                Console.WriteLine("Can't find root element of config");
                return null;
            }

            var config = new ConfigTCSuscribe()
            {
                Username = root.Element(NODE_TESTCASES).Element(NODE_SUSCRIBETC).Element(NODE_USERNAME).Value,
                Password = root.Element(NODE_TESTCASES).Element(NODE_SUSCRIBETC).Element(NODE_PASSWORD).Value
            };

            _log.Info("All data laod for TC Suscribe");
            return config;
        }

        /// <summary>
        /// to load conf for testcase replay quizz
        /// </summary>
        /// <param name="url"></param>
        /// <returns></returns>
        public ConfigTCReplayQuizz LoadConfigTCReplayQuizz(string url)
        {
            _log.Info("Load all data for test campagne");

            var doc = XDocument.Load(url);
            var root = doc.Element(NODE_CONFIG);
            if (root == null)
            {
                Console.WriteLine("Can't find root element of config");
                return null;
            }

            var config = new ConfigTCReplayQuizz()
            {
                NameQuizz = root.Element(NODE_TESTCASES).Element(NODE_REPLAYQUIZZTC).Element(NODE_REPLAYQUIZZNAME).Value
            };

            config.Answer1.Add(root.Element(NODE_TESTCASES).Element(NODE_REPLAYQUIZZTC).Element(NODE_REPLAYQUIZANSWER1).Value);
            config.Answer1.Add(root.Element(NODE_TESTCASES).Element(NODE_REPLAYQUIZZTC).Element(NODE_REPLAYQUIZANSWER1_2).Value);

            _log.Info("All data laod for TC Suscribe");
            return config;
        }

        #endregion















    }
}
