using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace massive_code_v_2
{
    public partial class user : System.Web.UI.Page
    {
        cl_Data.str_UserData l_CurrentUser = new cl_Data.str_UserData();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["user_data"] != null)
            {
                l_CurrentUser = (cl_Data.str_UserData)Session["user_data"];
                DataTable dt_Table = new DataTable();
                cl_UserContext UserContext = new cl_UserContext("users_base");
                List<cl_User> list_Users = UserContext.db_Users.ToList<cl_User>();

                if (l_CurrentUser.Permission == "administrator")
                {
                    dt_Table.Columns.Add("Имя");
                    dt_Table.Columns.Add("Фамилия");
                    dt_Table.Columns.Add("Логин");
                    dt_Table.Columns.Add("Email");
                    dt_Table.Columns.Add("Дата регистрации");
                    dt_Table.Columns.Add("Права");
                    dt_Table.Columns.Add("Блокировка");
                    dt_Table.Columns.Add("Аттрибуты");

                    foreach (cl_User temp in list_Users)
                    {
                        dt_Table.Rows.Add(temp.Name, temp.Surname, temp.Login, temp.Email, temp.RegDate, temp.Permission, temp.Blocked, temp.Attribute);
                    }
                }

                if (l_CurrentUser.Permission == "user")
                {
                    dt_Table.Columns.Add("Имя");
                    dt_Table.Columns.Add("Фамилия");
                    dt_Table.Columns.Add("Email");

                    foreach (cl_User temp in list_Users)
                    {
                        dt_Table.Rows.Add(temp.Name, temp.Surname, temp.Email);
                    }
                }


                GridView1.DataSource = dt_Table;
                GridView1.DataBind();
                GridView1.HeaderRow.BackColor = System.Drawing.Color.FromArgb(00, 66, 99);
                GridView1.HeaderRow.ForeColor = System.Drawing.Color.White;

                foreach (GridViewRow temp in GridView1.Rows)
                {

                }
            }

            else
            {
                Response.Redirect("default.aspx");
            }

        }
    }
}