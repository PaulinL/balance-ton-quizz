using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using TestBalanceTonQuizz.Enums;
using TestBalanceTonQuizz.Tools;

namespace TestBalanceTonQuizz.Entities
{
    /// <summary>
    /// Class to define all parameters to seach web element on UI
    /// </summary>
    public class WebElement
    {
        /// <summary>
        /// Name of this element
        /// </summary>
        public string Name { get; set; }
        /// <summary>
        /// HTML type of element (Class, Id, tag ...)
        /// </summary>
        public WebElementType Type { get; set; }
        /// <summary>
        /// Reference of this webe element UI
        /// </summary>
        public string Id { get; set; }

        /// <summary>
        /// Constructor with load method to get element by configuration map of UI page
        /// </summary>
        /// <param name="name"></param>
        /// <param name="pathMap"></param>
        public WebElement (string name, string pathMap)
        {
            var listParams = WebElementManager.LoadWebElementMap(name, pathMap);
            Name = listParams.ElementAt(0);
            Type = (WebElementType)Enum.Parse(typeof(WebElementType), listParams.ElementAt(1));
            Id = listParams.ElementAt(2);
        }
    }
}
