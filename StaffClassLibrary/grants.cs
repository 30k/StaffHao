using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace StaffClassLibrary
{
    class grants:Iquery
    {
        private string g_time, g_desc, g_cate;

        public string G_cate
        {
            get { return g_cate; }
            set { g_cate = value; }
        }

        public string G_desc
        {
            get { return g_desc; }
            set { g_desc = value; }
        }

        public string G_time
        {
            get { return g_time; }
            set { g_time = value; }
        }

        public grants(string time, string desc, string cate)
        {
            this.g_time = time;
            this.g_desc = desc;
            this.g_cate = cate;
        }


        public string toInsert()
        {
            throw new NotImplementedException();
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
