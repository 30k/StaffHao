using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace StaffClassLibrary
{
    class partners:Iquery
    {
        private string par_name, par_desc;

        public string Par_desc
        {
            get { return par_desc; }
            set { par_desc = value; }
        }

        public string Par_name
        {
            get { return par_name; }
            set { par_name = value; }
        }

        public partners(string name, string desc)
        {
            this.par_desc = desc;
            this.par_name = name;
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
