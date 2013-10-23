using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace StaffClassLibrary
{
    interface Iquery
    {
        string toInsert();
        string toDelete();
        string toEdit();
    }
}
