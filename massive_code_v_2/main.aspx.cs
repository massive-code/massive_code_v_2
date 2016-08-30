using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text;

namespace massive_code_v_2
{
    public partial class main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user_data"] == null)
            {
                Response.Redirect("default.aspx");
            }
            Label_MainText.Text = File.ReadAllText( Server.MapPath("App_data\\text\\main.txt"), Encoding.Default);
            Label_01.Text = File.ReadAllText( Server.MapPath("App_data\\text\\01.txt"), Encoding.Default);
            
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("https://youtu.be/vbGFRzzs4Hw");
        }
    }
}