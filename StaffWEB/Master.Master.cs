using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Configuration;
using StaffClassLibrary;

namespace StaffWEB
{
    public partial class Master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            OleDbConnection myConn = new OleDbConnection(ConfigurationManager.ConnectionStrings["access_conn"].ToString());
            string strQuery = staff.toSelect();
            myConn.Open();
            OleDbDataReader myReader = new OleDbCommand(strQuery, myConn).ExecuteReader();
            if (myReader.Read())
            {
                staffname.Text = myReader["Staff_name"].ToString();
                staffposition.Text = myReader["staff_position"].ToString();
                staffphone.Text = myReader["staff_phone"].ToString();
                staffmail.Text = myReader["Staff_mail"].ToString();
                staffdesc.Text = myReader["Staff_desc"].ToString();
            }
            else
            {
                staffname.Text = "bad";
            }
        }
    }
}