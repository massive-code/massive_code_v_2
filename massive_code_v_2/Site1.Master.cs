using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace massive_code_v_2
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        cl_Cryptography lcl_Cr = new cl_Cryptography();
        protected void Page_Load(object sender, EventArgs e)
        {

            string pageName = Path.GetFileNameWithoutExtension(Page.AppRelativeVirtualPath);
            if (pageName.ToLower() != "default")
            {
                ASPxImageSlider2.Visible = false;
            }

                LinkButton_SignOut.Visible = false;
            if (File.Exists(Server.MapPath("App_Data\\users_base.sdf")) == false)
            {
                cl_UserContext UserContext = new cl_UserContext("users_base");
                cl_User User = new cl_User
                {
                    Login = "Administrator".ToLower(),
                    Password = lcl_Cr.ps_MD5("unlibro348"),
                    Name = "Артур",
                    Surname = "Хусаинов",
                    Blocked = false,
                    GUID = Guid.NewGuid(),
                    Attribute = "null",
                    Email = "support@massivecode.ru".ToLower(),
                    Permission = "administrator",
                    RegDate = DateTime.Now.ToLongDateString()
                };
                UserContext.db_Users.Add(User);
                UserContext.SaveChanges();
            }
            Boolean lb_UserData = false;
            if (Session["user_data"] != null)
            {
                lb_UserData = true;
            }

            if (lb_UserData == false)
            {
                HttpCookie co_Cookie = Request.Cookies["cookie_User_Data"];
                if (co_Cookie != null && String.IsNullOrEmpty(co_Cookie["user_data"]) == false)
                {
                    cl_UserContext UserContext = new cl_UserContext("users_base");
                    cl_User User = new cl_User();
                    foreach (cl_User temp in UserContext.db_Users)
                    {
                        if (temp.GUID.ToString() == co_Cookie["user_data"])
                        {
                            cl_Data.str_UserData l_UserData = new cl_Data.str_UserData()
                            {
                                Name = temp.Name,
                                Surname = temp.Surname,
                                Login = temp.Login,
                                GUID = temp.GUID,
                                Email = temp.Email,
                                Permission = temp.Permission
                            };
                            Session["user_data"] = l_UserData;
                        }
                    }
                    lb_UserData = true;
                }
            }

            if (lb_UserData == true)
            {
                LinkButton_SignIn.Visible = false;
                LinkButton_SignOut.Visible = true;
                Label1.Text = "ПОЛЬЗОВАТЕЛЬ: ";
                cl_Data.str_UserData l_UserData = (cl_Data.str_UserData)Session["user_data"];
                LinkButton_User.Text = l_UserData.Surname + " " + l_UserData.Name;
            }

            else
            {
                Label1.Text = "";
                LinkButton_User.Text = "";
            }
               
        }

        protected void LinkButton_SignOut_Click(object sender, EventArgs e)
        {
            LinkButton_SignIn.Visible = true;
            LinkButton_SignOut.Visible = false;
            Label1.Text = "";
            LinkButton_User.Text = "";
            Session["user_data"] = null;
            HttpCookie Cookie = Request.Cookies["cookie_User_Data"];
            if (Cookie != null)
            {
                Cookie.Expires = DateTime.Now.AddDays(-1);
                Response.Cookies.Add(Cookie);
            }
            Response.Redirect("default.aspx");
        }

        protected void LinkButton_SignIn_Click(object sender, EventArgs e)
        {
            Response.Redirect("authorization.aspx");
        }

        protected void LinkButton_User_Click(object sender, EventArgs e)
        {
            Response.Redirect("user.aspx");
        }
    }
}