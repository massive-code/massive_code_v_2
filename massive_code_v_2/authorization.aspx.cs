using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace massive_code_v_2
{
    public partial class autorisation : System.Web.UI.Page
    {
        cl_Cryptography lcl_Cr = new cl_Cryptography();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user_data"] != null)
            {
                Response.Redirect("default.aspx");
            }
        }

        protected void Button_SignIn_Click(object sender, EventArgs e)
        {
            cl_UserContext UserContext = new cl_UserContext("users_base");
            cl_User User = new cl_User();
            User.Login = TextBox_Login.Text.ToLower();
            User.Password = lcl_Cr.ps_MD5(TextBox_Pass.Text);

            Boolean lb_SignIn = false;
            foreach (cl_User temp in UserContext.db_Users)
            {
                if (temp.Login == User.Login & temp.Password == User.Password)
                {
                    lb_SignIn = true;
                    cl_Data.str_UserData l_UserData = new cl_Data.str_UserData()
                    {
                        Name = temp.Name,
                        Surname = temp.Surname,
                        Login = temp.Login,
                        GUID = temp.GUID,
                        Email = temp.Email,
                        Permission = temp.Permission
                    };
                    Session.Add("user_data", l_UserData);
                    if (cb_RememberSignIn.Checked == true)
                    {
                        HttpCookie Cookie = new HttpCookie("cookie_User_Data");
                        Cookie.Expires = DateTime.Now.AddYears(100);
                        Cookie["user_data"] = l_UserData.GUID.ToString();
                        Response.Cookies.Add(Cookie);
                    }
                    Response.Redirect("default.aspx");
                }
            }

            if (lb_SignIn == false)
            {
                Label_SignIn.Text = "НЕВЕРНЫЙ ЛОГИН ИЛИ ПАРОЛЬ";
            }
        }

        protected void Button_SignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("registration.aspx");
        }
    }
}