using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace massive_code_v_2
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["user_data"] = "123";
            if (Session["user_data"] != null)
            {
                Label1.Text = "ПОЛЬЗОВАТЕЛЬ: ";
                LinkButton_User.Text =Session["user_data"].ToString();
            }
            else
            {
                Label1.Text = "";
                LinkButton_User.Text = "";
            }
               
        }

        protected void LinkButton_User_Click(object sender, EventArgs e)
        {

        }
    }
}