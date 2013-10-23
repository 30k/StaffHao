using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;
using System.Configuration;

namespace StaffWEB
{
    public class Connection
    {
        public static OleDbConnection getCon()
        {
            OleDbConnection myConn = new OleDbConnection(ConfigurationManager.ConnectionStrings["access_conn"].ToString());
            return myConn;
        }
    }
}