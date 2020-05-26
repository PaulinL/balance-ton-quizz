using log4net;
using System;
using System.IO;
using System.Linq;
using TestBalanceTonQuizz.Configuration;

[assembly: log4net.Config.XmlConfigurator(ConfigFile = "log4net.config")]

namespace TestBalanceTonQuizz
{
    class Program
    {
        private static readonly log4net.ILog _log = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        private static ConfigLoader _configLoader;

        static void Main(string[] args)
        {
            if (args.Count() > 0)
            { 
                Help();
                return;
            }

            // Init log file with execution
            _log.Info("Start Tests application");
            
            _configLoader = new ConfigLoader();
            var config = _configLoader.LoadConfig(Path.Combine(Environment.CurrentDirectory, "config.xml"));



            _log.Info("End of test");
        }


        static void Help()
        {
            _log.Info("Enter all parameter on file config.xml on tool directory before launch test");
        }

    }
}
