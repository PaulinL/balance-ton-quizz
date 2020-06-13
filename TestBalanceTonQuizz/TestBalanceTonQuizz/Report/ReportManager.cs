using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using TestBalanceTonQuizz.Entities;
using TestBalanceTonQuizz.Enums;
using TestBalanceTonQuizz.Testcases;

namespace TestBalanceTonQuizz.Report
{
    /// <summary>
    ///  Class to contain all methods to create HTML report
    /// </summary>
    public class ReportManager
    {
        private static string pathReportFolder;
        private static string pathFileStyle;
        private static string NameCampaignResultFile;
        private static string html;

        public ReportManager()
        {
            pathReportFolder = Path.Combine(Environment.CurrentDirectory, "Reports");
            pathFileStyle = Path.Combine("theme", "style.css");
        }

        /// <summary>
        /// To genere html report
        /// </summary>
        /// <param name="testCases"></param>
        public void BuildReport(TestCampaign testCampaign)
        {
            CreatePageCampaign(testCampaign);
            CreateAllTCPage(testCampaign);
        } 

        /// <summary>
        /// To creat html result page for a test campaign
        /// </summary>
        /// <param name="testCampaign"></param>
        public void CreatePageCampaign (TestCampaign testCampaign)
        {
            pathReportFolder = Path.Combine(pathReportFolder, "_" +testCampaign.Name + testCampaign.StartDate.ToString("yyyy_MM_dd_HH_mm_ss"));
            Directory.CreateDirectory(pathReportFolder);
            WriteDeclarationHTMLFile();
            WriteHeadHTMLFile("Report campaign", "../" +pathFileStyle);
            WriteTitlePage("Result " +testCampaign.Name + DateTime.Now.ToString("yyyy-mm-dd hh:MM:ss"));
            WriteInfoCampaign(testCampaign);
            WriteTabTestcases(testCampaign);
            WriteEndHTMLFile();
            SaveRaportCampaignFile(Path.Combine(pathReportFolder, "Report_testCampaign_" + testCampaign.StartDate.ToString("yyyy_MM_dd_HH_mm_ss") + ".html"));
        }

        /// <summary>
        /// To create all html report for testcase with all information about it.
        /// </summary>
        /// <param name="testCampaign"></param>
        public void CreateAllTCPage(TestCampaign testCampaign)
        {
            foreach (var tc in testCampaign.TestCases)
            {
                html = "";
                // create folder result for tc
                Directory.CreateDirectory(Path.Combine(pathReportFolder, tc.Name));

                WriteDeclarationHTMLFile();
                WriteHeadHTMLFile(tc.Name + " report", "../../" +pathFileStyle);
                WriteTitlePage("Result " + tc.Name + " campaign " + DateTime.Now.ToString("yyyy-mm-dd hh:MM:ss"));
                WriteInfoTC(tc);
                WriteTabTask(tc);
                WriteEndHTMLFile();
                SaveRaportCampaignFile(Path.Combine(pathReportFolder, tc.Name, tc.Name +".html"));
            }
        }

        #region - Write info page -

        /// <summary>
        /// To write main title of page
        /// </summary>
        /// <param name="title"></param>
        public void WriteTitlePage(string title)
        {
            html += "<h1>" + title + "</h1>" +"\n";
        }

        /// <summary>
        /// Write all information about test campaign on report file
        /// </summary>
        /// <param name="testCampaign"></param>
        public void WriteInfoCampaign(TestCampaign testCampaign)
        {
            html += "<h2>Start date : " +testCampaign.StartDate + "</h2>" + "\n";
            html += "<h2>End date : " +testCampaign.EndDate + "</h2>" + "\n";
        }

        /// <summary>
        /// Write all information about Testcase on report file
        /// </summary>
        /// <param name="tc"></param>
        public void WriteInfoTC(TestCase tc)
        {
            html += "<h2>Start date : " + tc.StartDate + "</h2>" + "\n";
            html += "<h2>End date : " + tc.EndDate + "</h2>" + "\n";
        }

        /// <summary>
        /// To write table with list of testcases
        /// </summary>lin
        /// <param name="testCampaign"></param>
        public void WriteTabTestcases(TestCampaign testCampaign)
        {
            html += "<table>" + "\n";
            html += "   <thead>" + "\n";
            html += "       <th>Testcase</th>" +"\n";
            html += "       <th>Result</th>" + "\n";
            html += "   </thead>" + "\n";
            html += "   <tbody>" + "\n";

            foreach (var tc in testCampaign.TestCases)
            {
                if(tc.Result.Equals(Result.PASSED))
                    html += "       <tr class=\"passed\">" + "\n";
                else if (tc.Result.Equals(Result.FAILED))
                    html += "       <tr class=\"failed\">" + "\n";
                else
                    html += "       <tr class=\"error\">" + "\n";

                html += "           <td><a href=\"" +Path.Combine(tc.Name, tc.Name +".html") +"\">" +tc.Name+ "</a></td>" + "\n";
                html += "           <td>" +tc.Result + "</td>" + "\n";
                html += "       </tr>" + "\n";
            }

            html += "   </tbody>" + "\n";
            html += "</table>" + "\n";
        }

        /// <summary>
        /// List all task for one testcase with value foreach task
        /// </summary>
        /// <param name="tc"></param>
        public void WriteTabTask(TestCase tc)
        {
            html += "<table>" + "\n";
            html += "   <thead>" + "\n";
            html += "       <th>Task</th>" + "\n";
            html += "       <th>Start date</th>" + "\n";
            html += "       <th>End date</th>" + "\n";
            html += "       <th>Result</th>" + "\n";
            html += "       <th>Value</th>" + "\n";
            html += "   </thead>" + "\n";
            html += "   <tbody>" + "\n";

            foreach (var task in tc.Tasks)
            {
                if (task.Result.Equals(Result.PASSED))
                    html += "       <tr class=\"passed\">" + "\n";
                else if (task.Result.Equals(Result.FAILED))
                    html += "       <tr class=\"failed\">" + "\n";
                else
                    html += "       <tr class=\"error\">" + "\n";

                html += "           <td>" +task.Name + "</td>" + "\n";
                html += "           <td>" + task.StartDate.ToString("HH:mm:ss") + " </td>" + "\n";
                html += "           <td>" + task.EndDate.ToString("HH:mm:ss") + " </td>" + "\n";
                html += "           <td>" + task.Result + "</td>" + "\n";
                if (task.ListValue.Count != 0)
                {
                    html += "       <td>" + "\n";
                    html += "           <ul>" + "\n";

                    foreach (var value in task.ListValue)
                        html += "             <li>" + value + "</li>" + "\n";

                    html += "           </ul>" + "\n";
                    html += "       </td>" + "\n";
                }
                else
                    html += "<td></td>" + "\n";
            }

            html += "   </tbody>" + "\n";
            html += "</table>" + "\n";
        }


        #endregion


        #region - Code HTML page -

        /// <summary>
        /// Write declaration html file
        /// </summary>
        public void WriteDeclarationHTMLFile()
        {
            html = "<!DOCTYPE html>" + "\n";
            html += "   <html>" + "\n";
        }

        /// <summary>
        /// Write header section
        /// </summary>
        /// <param name="titlePage"></param>
        /// <param name="pathStyleFile"></param>
        public void WriteHeadHTMLFile(string titlePage, string pathStyleFile)
        {
            html += "       <head>" + "\n";
            html += "           <title>" +titlePage + "</title>" + "\n";
            html += "           <link rel=\"stylesheet\" href=" + pathStyleFile + ">" + "\n";
            html += "       </head>" + "\n";
            html += "       <body>" + "\n";
        }

        /// <summary>
        /// Write close tag for html file
        /// </summary>
        public void WriteEndHTMLFile()
        {
            html += "   </body>" + "\n";
            html += "</html>" + "\n";
        }

        /// <summary>
        /// To create report file and save html text on it
        /// </summary>
        /// <param name="testCampaign"></param>
        public void SaveRaportCampaignFile(string pathFile)
        {
            File.WriteAllText(pathFile, html);
        }

        #endregion
    }
}
