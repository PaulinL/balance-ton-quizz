using OpenQA.Selenium;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Xml.Linq;
using TestBalanceTonQuizz.Entities;
using TestBalanceTonQuizz.Enums;

namespace TestBalanceTonQuizz.Tools
{
    public static class WebElementManager
    {

        private static readonly log4net.ILog _log = log4net.LogManager.GetLogger(typeof(WebElementManager));

        #region - Web page getters -

        /// <summary>
        /// To find an elementwith properties of an WebElement
        /// </summary>
        /// <param name="driver"></param>
        /// <param name="element"></param>
        /// <returns></returns>
        public static IWebElement FindFirstElement(IWebDriver driver, WebElement element)
        {
            var condition = "";
            if (element.Type.Equals(WebElementType.Class))
                condition = "." + element.Id;
            else if (element.Type.Equals(WebElementType.Id))
                condition = "#" + element.Id;
            else if (element.Type.Equals(WebElementType.Tag))
                condition = element.Id;

            IWebElement retour = driver.FindElement(By.CssSelector(condition));
            if (retour != null)
                return retour;
            else
            {
                _log.Error("Element not found, element name : " + element.Name + " id : " + element.Id);
                return null;
            }
        }


        public static ReadOnlyCollection<IWebElement> FindElements(IWebDriver driver, WebElement element)
        {
            var condition = "";
            if (element.Type.Equals(WebElementType.Class))
                condition = "." + element.Id;
            else if (element.Type.Equals(WebElementType.Id))
                condition = "#" + element.Id;
            else if (element.Type.Equals(WebElementType.Tag))
                condition = element.Id;

            var retour = driver.FindElements(By.CssSelector(condition));
            if (retour != null)
                return retour;
            else
            {
                _log.Error("Elements not found, element name : " + element.Name + " id : " + element.Id);
                return null;
            }
        }

        #endregion

        #region - Load WebElements -

        /// <summary>
        /// To find all information about a Web element from the map file
        /// </summary>
        /// <param name="nameElement"></param>
        /// <param name="pathMap"></param>
        /// <returns></returns>
        public static List<string> LoadWebElementMap (string nameElement, string pathMap)
        {
            const string NODE_NODES = "Nodes";
            const string NODE_NODE = "Node";
            const string NODE_NAME = "name";
            const string NODE_ID = "id";
            const string NODE_TYPE = "type";

            var listRetour = new List<string>();

            var doc = XDocument.Load(pathMap);
            var root = doc.Element(NODE_NODES);
            if (root == null)
            {
                Console.WriteLine("Can't find root element of map (Nodes)");
                return null;
            }

            var nodes = root.Elements(NODE_NODE);
            var node = nodes.First(x => x.Element(NODE_NAME).Value.Equals(nameElement));

            listRetour.Add(node.Element(NODE_NAME).Value);
            listRetour.Add(node.Element(NODE_TYPE).Value);
            listRetour.Add(node.Element(NODE_ID).Value);
            
            return listRetour;
        }
    

        #endregion
    }
}
