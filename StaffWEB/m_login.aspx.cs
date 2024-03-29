﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using StaffClassLibrary;
using System.Data.OleDb;
using System.Configuration;
using System.Web.Security;

namespace StaffWEB
{
    public partial class m_login : System.Web.UI.Page
    {
        admin newAdmin;
        OleDbConnection myConn;
        OleDbDataReader myReader;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            string username = text_username.Text;
            string password = text_pwd.Text;
            newAdmin = new admin(username, password);
            string strQuery = newAdmin.toAuth();
            myConn = new OleDbConnection(ConfigurationManager.ConnectionStrings["access_conn"].ToString());
            myConn.Open();
            myReader = new OleDbCommand(strQuery, myConn).ExecuteReader();
            string hashed = FormsAuthentication.HashPasswordForStoringInConfigFile(newAdmin.UserPwd, "sha1");
            if (myReader.Read())
            {
                string reader = myReader["Admin_pwd"].ToString();
                authenticateAdmin(newAdmin.UserName, hashed, reader);
            }
            else
            {
                logResult.Text = "Please re-check your user name";
            }
            myReader.Dispose();
            myConn.Close();
        }

        protected void authenticateAdmin(string inputUsername, string hashed, string readerPwd)
        {
            if (hashed == readerPwd)
            {
                FormsAuthentication.SetAuthCookie(inputUsername, false);
                Response.Redirect("db_new.aspx");
            }
            else
            {
                logResult.Text = "Please recheck your password";
            }

        }
    }
}