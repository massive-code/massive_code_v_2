using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace massive_code_v_2
{
    public partial class registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_SignUp_Click(object sender, EventArgs e)
        {
            cl_UserContext UserContext = new cl_UserContext("users_base");
            cl_User User = new cl_User();
            User.Login = TextBox_Login.Text;
            User.Email = TextBox_Email.Text;

            Boolean lb_Find = false;
            foreach (cl_User temp in UserContext.db_Users)
            {
                if (temp.Login == User.Login || temp.Email == User.Email)
                {
                    lb_Find = true;
                    Label_SignUp.Text = "ПОЛЬЗОВАТЕЛЬ С ТАКИМ ЛОГИНОМ ИЛИ EMAIL УЖЕ СУЩЕСТВУЕТ";
                }
            }

            if (lb_Find == false)
            {
                cl_Cryptography lcl_Cr = new cl_Cryptography();
                User.Password = lcl_Cr.ps_MD5(TextBox_Pass.Text);
                User.GUID = Guid.NewGuid();
                User.Permission = "user";
                User.Attribute = "null";
                User.Blocked = false;
                User.RegDate = DateTime.Now.ToLongDateString();
                UserContext.db_Users.Add(User);
                UserContext.SaveChanges();
                Session.Add("user_data", User.GUID);
                Label_SignUp.Text = "РЕГИСТРАЦИЯ ПРОШЛА УСПЕШНО";
                Response.Redirect("main.aspx");
            }

        }
    }
}