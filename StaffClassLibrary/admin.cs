using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;

namespace StaffClassLibrary
{
    public class admin
    {
        private string userName, userPwd;

        public admin(string username, string userpwd)
        {
            this.userName = username;
            this.userPwd = userpwd;
        }

        public string UserPwd
        {
            get { return userPwd; }
            set { userPwd = value; }
        }

        public string UserName
        {
            get { return userName; }
            set { userName = value; }
        }

        public string toAuth()
        {
            string strSQL;
            strSQL = "select Admin_pwd from admin where Admin_name='" + UserName + "'";
            return strSQL;
        }

    }
}
