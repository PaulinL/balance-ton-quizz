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
        public int TimePause { get; set; }
        public string AddressDB { get; set; }
        public string PortDB { get; set; }
        public string UsernameDB { get; set; }
        public string PasswordDB { get; set; }
        public string NameDB { get; set; }

    }
}
