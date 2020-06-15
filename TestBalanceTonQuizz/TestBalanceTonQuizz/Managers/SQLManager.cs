using MySql.Data.MySqlClient;
using System;

namespace TestBalanceTonQuizz.Managers
{

    public class SQLManager
    {
		private static readonly log4net.ILog _log = log4net.LogManager.GetLogger(typeof(SQLManager));

		private static MySqlConnection connection;

		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="address"></param>
		/// <param name="username"></param>
		/// <param name="password"></param>
		public SQLManager(string address, string port, string username, string password, string nameDB)
        {
			OpenConnection(address, port, username, password, nameDB);
		}

        #region - Conf -

        /// <summary>
        /// open connection with database
        /// </summary>
        /// <param name="address"></param>
        /// <param name="username"></param>
        /// <param name="password"></param>
        /// <param name="nameDB"></param>
        public void OpenConnection(string address, string port, string username, string password, string nameDB)
        {
			try
			{
				string connectionParameters = "SERVER = "+ address +"; PORT = " +port +"; DATABASE = " +nameDB 
					+"; UID = " +username +"; PASSWORD = " +password;
				connection = new MySqlConnection(connectionParameters);
				connection.Open();
				_log.Info("Database connection opened");
			}
			catch (Exception ex)
			{
				_log.Error(ex.Message);
				_log.Error(ex.StackTrace);
			}
		}

		/// <summary>
		/// To close connection to database
		/// </summary>
		public void CloseConnection()
        {
			connection.Close();
		}

        #endregion


        #region - Request -

		/// <summary>
		/// To check on database is user exist
		/// </summary>
		/// <param name="name"></param>
		/// <param name="password"></param>
		/// <returns></returns>
		public bool CheckUserDB(string name, string password)
        {
			try
            {
				MySqlCommand command = connection.CreateCommand();
				command.CommandText = "SELECT password, username FROM user WHERE password = '" +password +"' AND username = '" +name +"'";

				MySqlDataReader reader = command.ExecuteReader();
				if (!reader.HasRows)
					return false;
				else
					return true;
            }
			catch(Exception e)
            {
				_log.Error(e.Message);
				_log.Error(e.StackTrace);
				return false;
            }
		}

        #endregion
    }
}
