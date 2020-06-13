using System;
using System.Collections.Generic;

namespace TestBalanceTonQuizz.Entities
{
    public class TestCampaign
    {
        public string Name { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public List<TestCase> TestCases { get; set; }

        public TestCampaign()
        {
            Name = "Campaign test";
            StartDate = DateTime.Now;
            TestCases = new List<TestCase>();
        }

        public void CloseCampaign()
        {
            EndDate = DateTime.Now;
        }
    }
}
