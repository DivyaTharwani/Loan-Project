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
            BindData();
        }
    }
    private void BindData()
    {
        string connectionString = ConfigurationManager.ConnectionStrings["mysafarConnectionString6"].ConnectionString;
        //using (SqlConnection connection = new SqlConnection(connectionString))
        using (SqlConnection con = new SqlConnection(connectionString))
        {
            using (SqlCommand cmd = new SqlCommand("select LRID,UserID,Amount_repay,IsPaid From LoanRepayment where(UserID = '" + Session["ID"] + "')", con))
            {
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }
    }
    
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Pay")
        {
            int loanid = Convert.ToInt32(e.CommandArgument);
            string connectionString = ConfigurationManager.ConnectionStrings["mysafarConnectionString6"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionString))
           {
                string commandText = "update LoanRepayment SET IsPaid= @Status WHERE LRID = @LRID";
                using (SqlCommand cmd = new SqlCommand(commandText, con))
                {
                    //con.Open();
                    cmd.Parameters.AddWithValue("@Status", e.CommandName == "Pay" ? true : false);
                    cmd.Parameters.AddWithValue("@LRID", loanid);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    //con.Close();

                }

            }

            


            BindData();
        }
    }
}