using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    string n = System.Configuration.ConfigurationManager.AppSettings["con"];
    SqlDataAdapter d;
    DataTable t;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGridView();
        }
    }
    private void BindGridView()
    {
        string connectionString = ConfigurationManager.ConnectionStrings["mysafarConnectionString6"].ConnectionString;
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();

            string query = "Select * from Loan where(UserID = '"+Session["ID"]+"') ";
            using (SqlCommand command = new SqlCommand(query, connection))
            {
                SqlDataReader reader = command.ExecuteReader();
                GridView1.DataSource = reader;
                GridView1.DataBind();
            }
        }
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if(e.Row.RowType == DataControlRowType.DataRow)
        {
            bool bitValue = Convert.ToBoolean(DataBinder.Eval(e.Row.DataItem, "IsApprove"));
            e.Row.Cells[4].Text = bitValue ? "Approve" : "Not aprrove";
            bool bitValuee = Convert.ToBoolean(DataBinder.Eval(e.Row.DataItem, "IsPaid"));
            e.Row.Cells[5].Text = bitValuee ? "Paid" : "Not Paid";
        }
    }
}