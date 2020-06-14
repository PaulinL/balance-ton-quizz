using System.Collections.Generic;

namespace TestBalanceTonQuizz.Configuration
{
    public class ConfigTCReplayQuizz
    {
        public string NameQuizz { get; set; }
        public List<string> Answer1 { get; set; }
        public List<string> Answer2 { get; set; }

        public ConfigTCReplayQuizz()
        {
            Answer1 = new List<string>();
            Answer2 = new List<string>();
        }
    }
}
