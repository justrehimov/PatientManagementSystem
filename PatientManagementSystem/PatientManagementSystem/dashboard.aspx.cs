using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PatientManagementSystem
{
    public partial class dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("login.aspx");
            }
            Database db = new Database();
            int[] appeals = db.getPatientCount();
            tb1.Text = "Headache  " + appeals[0];
            tb2.Text = "Heartpain  " + appeals[1];
            tb3.Text = "Nausea  " + appeals[2];
            tb4.Text = "Vomiting  " + appeals[3];
            tb5.Text = "Flu  " + appeals[4];
            tb6.Text = "Bronchitis  " + appeals[5];
            tb7.Text = "Corona  " + appeals[6];
            tb8.Text = "Cancer  " + appeals[7];
            tb9.Text = "Plague  " + appeals[8];
        }
    }
}