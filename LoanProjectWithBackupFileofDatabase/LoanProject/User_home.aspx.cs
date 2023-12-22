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
    SqlDataAdapter d;
    DataTable t;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null && Session["username"] != " ")
        {
            lblusername.InnerText = Session["username"].ToString();
            //Response.Redirect("login_form.aspx");
        }

        SqlConnection con2 = new SqlConnection(n);
        con2.Open();
        SqlCommand cmd = new SqlCommand("select ID from signup where username='" + lblusername.InnerText + "'", con2);
        SqlDataReader s = cmd.ExecuteReader();
        if (s.Read())
        Literal1.Text = (s[0] + "");
        {
            Session["ID"] = Literal1.Text;
            if (Session["ID"] != null )
            {
                Literal1.Text = Session["ID"].ToString();
            }
            else
                Literal1.Text = "session is empty";
        }
        

        con2.Close();
    }
}