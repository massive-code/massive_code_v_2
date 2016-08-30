using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace massive_code_v_2
{
    public class cl_User
    {
        public Int32 cl_UserID { get; set; }
        public String Login { get; set; }
        public String Password { get; set; }
        public Guid GUID { get; set; }
        public String Mail { get; set; }
        public String RegDate { get; set; }
        public String Permission { get; set; }
        public String Attribute { get; set; }
        public Boolean Blocked { get; set; }

    }
    public class cl_UserContext : DbContext
    {
        public DbSet<cl_User> db_Users { get; set; }
        public cl_UserContext(String base_name)
            : base(base_name)
        { }

    }

}