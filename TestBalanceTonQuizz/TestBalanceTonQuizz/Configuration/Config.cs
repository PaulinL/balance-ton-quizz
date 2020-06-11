using System;
using System.Collections.Generic;
using System.Text;

namespace TestBalanceTonQuizz.Configuration
{
    /// <summary>
    /// Class contain all properties to test web site
    /// </summary>
    public class Config
    {
        /// <summary>
        /// Address of web site
        /// </summary>
        public string Address { get; set; }
        /// <summary>
        /// Username for test to use 
        /// </summary>
        public string Username { get; set; }
        /// <summary>
        /// Password user for test to use 
        /// </summary>
        public string Password { get; set; }
    }
}
