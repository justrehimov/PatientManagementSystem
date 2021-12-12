using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace PatientManagementSystem
{
    public partial class showpatient : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["user"] == null)
            {
                Response.Redirect("login.aspx");
            }
            getData();
        }


        private void getData()
        {
            Database db = new Database();
            MySqlDataAdapter adapter = db.getAdapter();
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            gridview.DataSource = dt;
            gridview.DataBind();
        }

        protected void btn_search_Click1(object sender, EventArgs e)
        {
            Database db = new Database();
            MySqlDataAdapter adapter = db.getAdapter(tb_search.Text.Trim());
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            gridview.DataSource = dt;
            gridview.DataBind();
        }
    }
}