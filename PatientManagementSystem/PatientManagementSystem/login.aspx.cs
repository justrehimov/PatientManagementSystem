using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PatientManagementSystem
{
    public partial class login : System.Web.UI.Page
    {
        private Database db;
        protected void Page_Load(object sender, EventArgs e)
        {
            db = new Database();
            if(Session["user"] != null)
            {
                Session.Abandon();
            }
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            if (db.login(tb_email.Text.Trim(), tb_password.Text.Trim()))
            {
                Session["user"] = tb_email.Text.Trim();
                Response.Redirect("index.aspx");
                
            }
            else
            {
                db.MsgBox("E-mail or Password isn't true",this.Page,this);
            }
        }
    }
}