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
            String ls_UID = Request.QueryString["mail_confirm"];
            if (ls_UID != null)
            {
                cl_UserContext UserContext = new cl_UserContext("users_base");
                cl_User User = new cl_User();
                foreach(cl_User temp in UserContext.db_Users)
                {
                    if (temp.GUID.ToString() == ls_UID && temp.Attribute == "email_confirm")
                    {
                        temp.Attribute = "null";
                        UserContext.SaveChanges();
                        Response.Redirect("authorization.aspx");
                    }
                }
            }
        }

        protected void Button_SignUp_Click(object sender, EventArgs e)
        {
            Label_SignUp.Text = "";
            Boolean b_CheckEmpty = false;

            List<TextBox> list_TB = new List<TextBox>();
            list_TB.Add(TextBox_Name);
            list_TB.Add(TextBox_Surname);
            list_TB.Add(TextBox_Login);
            list_TB.Add(TextBox_Email);
            list_TB.Add(TextBox_Pass);

            foreach (TextBox temp in list_TB)
            {
                if (String.IsNullOrWhiteSpace(temp.Text) == false)
                {
                    b_CheckEmpty = true;
                }
                else
                {
                    b_CheckEmpty = false;
                    temp.BackColor = System.Drawing.Color.DarkRed;
                }
            }

            if (b_CheckEmpty == false)
            {
                Label_SignUp.Text = "ЗАПОЛНИТЕ ВСЕ ПОЛЯ РЕГИСТРАЦИИ";
            }

            if (b_CheckEmpty == true)
            {
                cl_UserContext UserContext = new cl_UserContext("users_base");
                cl_User User = new cl_User();
                User.Login = TextBox_Login.Text.ToLower();
                User.Email = TextBox_Email.Text.ToLower();

                bool b_Login = false;
                bool b_Email = false;
                foreach (cl_User temp in UserContext.db_Users)
                {
                    
                    if (temp.Login == User.Login)
                    {
                        b_Login = true;
                        Label_SignUp.Text = "ПОЛЬЗОВАТЕЛЬ С ТАКИМ ЛОГИНОМ СУЩЕСТВУЕТ";
                    }
                    if (temp.Email == User.Email)
                    {
                        b_Email = true;
                        Label_SignUp.Text = "ПОЛЬЗОВАТЕЛЬ С ТАКИМ EMAIL СУЩЕСТВУЕТ";
                    }
                }
                if (b_Login == false && b_Email == false)
                {
                    User.Name = TextBox_Name.Text;
                    User.Surname = TextBox_Surname.Text;
                    cl_Cryptography lcl_Cr = new cl_Cryptography();
                    User.Password = lcl_Cr.ps_MD5(TextBox_Pass.Text);
                    User.GUID = Guid.NewGuid();
                    User.Permission = "user";
                    User.Attribute = "email_confirm";
                    User.Blocked = false;
                    User.RegDate = DateTime.Now.ToLongDateString();
                    UserContext.db_Users.Add(User);
                    UserContext.SaveChanges();
                    Label_SignUp.Text = "ДЛЯ ЗАВЕРШЕНИЯ РЕГИСТРАЦИИ ПОДТВЕРДИТЕ УКАЗАННЫЙ ВАМИ EMAIL";
                    cl_Mail l_Mail = new cl_Mail();
                    l_Mail.pv_Mail_ConfirmRegistration(User.GUID.ToString(), User.Email, User.Name, User.Surname);
                }
            }
            
        }
    }
}