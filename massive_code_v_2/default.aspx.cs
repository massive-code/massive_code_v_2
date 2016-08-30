using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.Sql;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;

namespace massive_code_v_2
{
    public partial class _default : System.Web.UI.Page
    {
        cl_Cryptography lcl_Cr = new cl_Cryptography();

        protected void Page_Load(object sender, EventArgs e)
        {


            if (File.Exists(Server.MapPath("App_Data\\users_base.sdf")) == false)
            {
                cl_UserContext UserContext = new cl_UserContext("users_base");
                cl_User User = new cl_User { Login = "Administrator", Password = lcl_Cr.ps_MD5("unlibro348"), Blocked = false, GUID = Guid.NewGuid(), Attribute = "null", Mail = "support@massivecode.ru", Permission = "administrator", RegDate = DateTime.Now.ToLongDateString() };
                UserContext.db_Users.Add(User);
                UserContext.SaveChanges();
            }
            Button_SignIn.Attributes.Add("onmouseover", "this.className='button_cursor'");
            Button_SignUp.Attributes.Add("onmouseover", "this.className='button_cursor'");

            //if (Session["user_data"] != null)
            //{
            //    Response.Redirect("main.aspx");
            //}
        }

        protected void Button_SignIn_Click(object sender, EventArgs e)
        {
            cl_UserContext UserContext = new cl_UserContext("users_base");
            cl_User User = new cl_User();
            User.Login = TextBox_Login.Text;
            User.Password = lcl_Cr.ps_MD5(TextBox_Pass.Text);

            Boolean lb_SignIn = false;
            foreach (cl_User temp in UserContext.db_Users)
            {
                Label_SignIn.Text = temp.Login;

                if (temp.Login == User.Login & temp.Password == User.Password)
                {
                    lb_SignIn = true;
                    Session.Add("user_data", temp.GUID);
                    Response.Redirect("main.aspx");
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