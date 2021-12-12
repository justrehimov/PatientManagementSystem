using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PatientManagementSystem
{
    public partial class changepassword : System.Web.UI.Page
    {
        private Database db = new Database();
        private ChangePasswordService cps = ChangePasswordService.getCPS();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void send_btn_Click(object sender, EventArgs e)
        {
            if (db.checkMail(tb_email.Text.Trim()))
            {
                cps.sendconfirmCode(tb_email.Text.Trim());
                Session["Code"] = cps.getCode().ToString();
                Session.Timeout = 1;
                tb_code.Enabled = true;
                tb_password.Enabled = true;
                change_btn.Enabled = true;
               
            }
            else
            {
                db.MsgBox("This mail cannot find in system", this.Page,this);
            }
            
        }

        protected void change_btn_Click(object sender, EventArgs e)
        {
            if(Session["Code"] != null)
            {
                if (Session["Code"].ToString() == tb_code.Text.Trim() && tb_email.Text.Trim() != "")
                {
                    db.changePass(tb_password.Text.Trim(), tb_email.Text.Trim());
                    Session.Abandon();
                    Response.Redirect("login.aspx");
                }
                else
                {
                    db.MsgBox("Confirm Code isn't true", this.Page, this);
                }
            }
            else
            {
                db.MsgBox("the code has expired", this.Page, this);
            }
            
        }
    }
}