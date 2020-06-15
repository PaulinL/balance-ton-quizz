using System;
using System.Collections.Generic;
using TestBalanceTonQuizz.Enums;

namespace TestBalanceTonQuizz.Entities
{
    public class Task
    {
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public Result Result { get; set; }
        public string ErrorMessage { get; set; }
        public List<string> ListValue { get; set; }

        /// <summary>
        /// Constructor
        /// </summary>
        public Task ()
        {
            StartDate = DateTime.Now;
            ListValue = new List<string>();
        }

        /// <summary>
        /// To save end date of task
        /// </summary>
        public void CloseTask()
        {
            EndDate = DateTime.Now;
        }

        /// <summary>
        /// Save result of task
        /// </summary>
        /// <param name="result"></param>
        public void SetResult(Result result)
        {
            Result = result;
        }

        /// <summary>
        /// To save parameter of task (for report)
        /// </summary>
        /// <param name="value"></param>
        public void SetValue(string value)
        {
            ListValue.Add(value);
        }

        /// <summary>
        /// To save error message (for report)
        /// </summary>
        /// <param name="message"></param>
        public void SetErrorMessage(string message)
        {
            ErrorMessage = message;
        }
    }
}
