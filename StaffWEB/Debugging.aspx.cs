using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Configuration;
using System.IO;

namespace StaffWEB
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            byte[] fileData = this.FileUpload1.FileBytes;
            string storeCmd = "insert into t_image(imageData) values(?)";
            OleDbConnection myConn = new OleDbConnection(ConfigurationManager.ConnectionStrings["access_conn"].ToString());
            OleDbCommand cmd = new OleDbCommand(storeCmd, myConn);
            cmd.Parameters.Add("imageData", OleDbType.Binary);
            cmd.Parameters["imageData"].Value = fileData;
            myConn.Open();
            cmd.ExecuteNonQuery();
            myConn.Close();
        }

    }
}