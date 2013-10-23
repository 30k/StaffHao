using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace StaffClassLibrary
{
    public class staff:Iquery
    {
        private string staff_name, staff_phone, staff_mail, staff_position, staff_desc;

        public staff(string name, string phone, string mail, string position, string desc)
        {
            this.staff_name = name;
            this.staff_phone = phone;
            this.staff_mail = mail;
            this.staff_position = position;
            this.staff_desc = desc;
        }

        public string Staff_desc
        {
            get { return staff_desc; }
            set { staff_desc = value; }
        }

        public string Staff_position
        {
            get { return staff_position; }
            set { staff_position = value; }
        }

        public string Staff_mail
        {
            get { return staff_mail; }
            set { staff_mail = value; }
        }

        public string Staff_phone
        {
            get { return staff_phone; }
            set { staff_phone = value; }
        }

        public string Staff_name
        {
            get { return staff_name; }
            set { staff_name = value; }
        }

        public static string toSelect()
        {
            string strQuery;
            strQuery = "select Staff_name,Staff_title,Staff_phone,Staff_mail,Staff_position,Staff_desc from Staff";
            return strQuery;
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
