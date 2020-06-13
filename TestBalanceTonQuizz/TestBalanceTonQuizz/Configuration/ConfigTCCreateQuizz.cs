using System;
using System.Collections.Generic;
using System.Text;

namespace TestBalanceTonQuizz.Configuration
{
    public class ConfigTCCreateQuizz
    {
        public string TitleQuizz { get; set; }
        public string DescriptionQuizz { get; set; }
        public string Theme { get; set; }
        public string Question1 { get; set; }
        public List<string> Reponse1 { get; set; }
        public string Question2 { get; set; }
        public List<string> Reponse2 { get; set; }

        public ConfigTCCreateQuizz()
        {
            Reponse1 = new List<string>();
            Reponse2 = new List<string>();
        }
    }
}
