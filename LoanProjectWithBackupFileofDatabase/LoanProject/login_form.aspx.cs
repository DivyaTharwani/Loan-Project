using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class login_form : System.Web.UI.Page
{
    string n = System.Configuration.ConfigurationManager.AppSettings["con"];
    SqlDataAdapter d;
    DataTable t;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void login_Click(object sender, EventArgs e)
    {
        Session["a"] = Textbox1.Text;
        Session[" b"] = Textbox2.Text;
        Session["username"] = Textbox1.Text.ToString();

         d = new SqlDataAdapter("select username,password from signup where( username='"+Textbox1.Text+"' and password='"+Textbox2.Text+"')",n);
         t = new DataTable();
        d.Fill(t);
        if (t.Rows.Count > 0)
        {
            Response.Redirect("User_home.aspx");
        }
        else
        {
            Label1.Text = "invalid id password";
        }

    }
}