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
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        label1.Text = Session["ID"].ToString();
    }
    protected void submit_Click1(object sender, EventArgs e)
    {
        
        SqlDataAdapter d = new SqlDataAdapter("insert into Loan(UserID,AMOUNT,Term,IsApprove,IsPaid,dateofcreation)values(@a,@b,@c,@d,@e,@f)", n);
        d.SelectCommand.Parameters.AddWithValue("a", label1.Text);
        d.SelectCommand.Parameters.AddWithValue("b", textBox1.Text);
        d.SelectCommand.Parameters.AddWithValue("c", textBox2.Text);
        d.SelectCommand.Parameters.AddWithValue("d", 0);
        d.SelectCommand.Parameters.AddWithValue("e", 0);
        d.SelectCommand.Parameters.AddWithValue("f", textBox3.Text);
        DataTable t = new DataTable();
        d.Fill(t);
        textBox1.Text = "";
        textBox2.Text = "";
        textBox3.Text = "";

    }

}