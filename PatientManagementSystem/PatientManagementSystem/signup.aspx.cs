using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PatientManagementSystem
{
    public partial class signup : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void signup_btn_Click(object sender, EventArgs e)
        {
            Database db = new Database();
            try
            {
                bool signup = false;
                if (tb_name.Text.Trim() != "Name" || tb_surname.Text.Trim() != "Surname" || tb_email.Text.Trim() != "E-mail" || tb_password.Text.Trim() != "Password" || tb_name.Text.Trim() != "" || tb_surname.Text.Trim() != "" || tb_password.Text.Trim() != "")
                {
                    signup = false;
                }

                if (!signup)
                {
                    db.signup(tb_name.Text.Trim(), tb_surname.Text.Trim(), tb_email.Text.Trim(), tb_password.Text.Trim());
                    db.MsgBox("You are registered", this.Page, this);
                    Response.Redirect("login.aspx");
                }
                else
                {
                    db.MsgBox("Data cannot be empty or placeholder text", this.Page, this);
                }
            }
            catch(Exception ex)
            {
                db.MsgBox("Data is not correct", this.Page, this);
            }
        }
    }
}