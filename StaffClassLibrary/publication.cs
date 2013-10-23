using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace StaffClassLibrary
{
    class publication:Iquery
    {
        private string pub_time, pub_desc;

        public string Pub_desc
        {
            get { return pub_desc; }
            set { pub_desc = value; }
        }

        public string Pub_time
        {
            get { return pub_time; }
            set { pub_time = value; }
        }

        public publication(string time, string desc)
        {
            this.pub_time = time;
            this.pub_desc = desc;
        }

        public string toInsert()
        {
            string insertQuery;
            insertQuery = "insert into publication(Pub_time,Pub_desc) values ('"+pub_time+"','"+pub_desc+"')";
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
