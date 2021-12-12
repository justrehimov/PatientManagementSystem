using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PatientManagementSystem
{
    public partial class addpatient : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("login.aspx");
            }
        }
        protected void submit_btn_Click(object sender, EventArgs e)
        {
            Database db = new Database();
            if (name.Text.Trim() != "" && surname.Text.Trim() != "" && fathername.Text.Trim() != "" && phone.Text.Trim() != "" && region.Text.Trim() != "" && email.Text.Trim() != "" && birthday.Text.Trim() != "" && appeals.SelectedValue.Trim() != ""){
                db.addPatient(name.Text.Trim(), surname.Text.Trim(), fathername.Text.Trim(), phone.Text.Trim(), region.Text.Trim(), email.Text.Trim(), birthday.Text.Trim(), appeals.SelectedValue.Trim());
                db.MsgBox("Patient Successfully Added!", this.Page, this);
            }
            else
            {
                db.MsgBox("Data cannot be empty", this.Page, this);
            }
            
        }
    }
}