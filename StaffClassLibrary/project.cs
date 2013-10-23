using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace StaffClassLibrary
{
    class project:Iquery
    {
        private string pro_name, pro_stackholder, pro_desc;

        public string Pro_desc
        {
            get { return pro_desc; }
            set { pro_desc = value; }
        }

        public string Pro_stackholder
        {
            get { return pro_stackholder; }
            set { pro_stackholder = value; }
        }

        public string Pro_name
        {
            get { return pro_name; }
            set { pro_name = value; }
        }

        public project(string name, string stackholder, string desc)
        {
            this.pro_name = name;
            this.pro_stackholder = stackholder;
            this.pro_desc = desc;
        }

        public string toInsert()
        {
            string insertQuery;
            insertQuery = "insert into projects(Pro_name,Pro_desc,Pro_desc) values ('"+pro_name+"','"+pro_stackholder+"','"+pro_desc+"')";
            return insertQuery;
        }

        public string toDelete()
        {
            throw new NotImplementedException();
        }

        public string toEdit()
        {
            throw new NotImplementedException();
        }
    }
}
