using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Default3 : System.Web.UI.Page
{
    string n = System.Configuration.ConfigurationManager.AppSettings["con"];
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }
    protected void submit_Click1(object sender, EventArgs e)
    {
        SqlDataAdapter d = new SqlDataAdapter("insert into signup(first_name,last_name,email_id,username,password,mobile_no)values(@a,@b,@c,@d,@e,@f)", n);
        d.SelectCommand.Parameters.AddWithValue("a",textBox1.Text);
        d.SelectCommand.Parameters.AddWithValue("b", textBox2.Text);
        d.SelectCommand.Parameters.AddWithValue("c", textBox3.Text);
        d.SelectCommand.Parameters.AddWithValue("d", textBox4.Text);
        d.SelectCommand.Parameters.AddWithValue("e", textBox5.Text);
        d.SelectCommand.Parameters.AddWithValue("f", textBox7.Text);
        DataTable t = new DataTable();
        d.Fill(t);
        textBox1.Text = "";
        textBox2.Text = "";
        textBox3.Text = "";
        textBox4.Text = "";
        textBox6.Text = "";
        textBox5.Text = "";
        textBox7.Text = "";

    }
  
}