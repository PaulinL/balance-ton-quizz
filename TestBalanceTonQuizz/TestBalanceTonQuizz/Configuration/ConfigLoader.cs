using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml.Linq;

namespace TestBalanceTonQuizz.Configuration
{
    public class ConfigLoader
    {
        private static readonly log4net.ILog _log = log4net.LogManager.GetLogger(typeof(ConfigLoader));

        #region Tag label config

        private const string NODE_CONFIG = "Config";
        private const string NODE_ADDRESS = "Address";
        private const string NODE_USERNAME = "Username";
        private const string NODE_PASSWORD = "Password";

        #endregion

        /// <summary>
        /// To load all configuration in file on Config object
        /// </summary>
        /// <param name="url"></param>
        /// <returns></returns>
        public Config LoadConfig(string url)
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
                Username = root.Element(NODE_USERNAME).Value,
                Password = root.Element(NODE_PASSWORD).Value
            };

            _log.Info("All data laod of test campagne");
            return config;
        }

    }
}
