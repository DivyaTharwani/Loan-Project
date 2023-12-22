using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    string n = System.Configuration.ConfigurationManager.AppSettings["con"];
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Textbox1_TextChanged(object sender, EventArgs e)
    {
    }
    protected void login_Click(object sender, EventArgs e)
    {

        SqlDataAdapter d = new SqlDataAdapter("select * from admin where admin_name='" + Textbox1.Text + "' and password ='" + Textbox2.Text + "'", n);
        DataTable t = new DataTable();
        d.Fill(t);
        Session["a"] = Textbox1.Text;
        Session["b"] = Textbox2.Text;
        if (t.Rows.Count > 0)
        {
            Response.Redirect("admin_home.aspx");
        }
        else
        {
            Label1.Text = "INVALID ID AND PASSWORD";
        }


    }
}