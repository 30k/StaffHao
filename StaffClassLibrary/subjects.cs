using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace StaffClassLibrary
{
    public class subjects: Iquery
    {
        private string sub_time, sub_name, sub_desc;

        public subjects(string time, string name, string desc)
        {
            this.sub_time = time;
            this.sub_name = name;
            this.sub_desc = desc;
        }

        public string Sub_desc
        {
            get { return sub_desc; }
            set { sub_desc = value; }
        }

        public string Sub_name
        {
            get { return sub_name; }
            set { sub_name = value; }
        }

        public string Sub_time
        {
            get { return sub_time; }
            set { sub_time = value; }
        }

        public string toInsert()
        {
            string insertQuery;
            insertQuery = "insert into subject(sub_time,Sub_name,Sub_desc) values('"+sub_time+"','"+sub_name+"','"+sub_desc+"')";
            return insertQuery;
        }

        public string toEdit()
        {
            string editQuery;
            editQuery = "";
            return editQuery;
        }

        public string toDelete()
        {
            string deleteQuery;
            deleteQuery = "";
            return deleteQuery;
        }

    }
}
