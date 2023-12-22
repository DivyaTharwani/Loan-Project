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
            using (SqlCommand cmd = new SqlCommand("select LoanID,AMOUNT,Term,IsApprove From Loan", con))
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
        if(e.CommandName == "Approve" || e.CommandName == "Decline")
        {
            int loanid = Convert.ToInt32(e.CommandArgument);
            string connectionString = ConfigurationManager.ConnectionStrings["mysafarConnectionString6"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string commandText = "update Loan SET IsApprove = @Status WHERE LoanID = @LoanID";
                using (SqlCommand cmd = new SqlCommand(commandText, con))
                {
                    //con.Open();
                    cmd.Parameters.AddWithValue("@Status", e.CommandName == "Approve" ? true: false);
                    cmd.Parameters.AddWithValue("@loanid", loanid);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    //con.Close();
                    
                }
                
            }

            InsertLoanrepayments(loanid);


            BindData();
        }
    }
    private void InsertLoanrepayments(int loanid)
    {
        string connectionString = ConfigurationManager.ConnectionStrings["mysafarConnectionString6"].ConnectionString +";MultipleActiveResultSets=true";
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();
            string selectLoanQuery = "select UserID,AMOUNT,Term from Loan where LoanID = @loanid";
            SqlCommand selectLoanCommand = new SqlCommand(selectLoanQuery, connection);
            selectLoanCommand.Parameters.AddWithValue("@LoanID",loanid);
            SqlDataReader reader = selectLoanCommand.ExecuteReader();
            if(reader.Read())
            {
                int userid = Convert.ToInt32(reader["UserID"]);
                decimal loanAmount = Convert.ToDecimal(reader["AMOUNT"]);
                int numberofTerms = Convert.ToInt32(reader["Term"]);
                decimal repaymentAmount = loanAmount / numberofTerms;
                string insertRepaymentQuery = "INSERT INTO LoanRepayment(LoanID,UserID,Amount_repay,IsPaid)VALUES(@LoanID,@UserID,@Amount_repay,@IsPaid)";
                for(int i = 0; i < numberofTerms; i++)
                {
                    SqlCommand insertRepaymentCommand = new SqlCommand(insertRepaymentQuery, connection);
                    insertRepaymentCommand.Parameters.AddWithValue("@LoanID", loanid);
                    insertRepaymentCommand.Parameters.AddWithValue("@UserID", userid);
                    insertRepaymentCommand.Parameters.AddWithValue("@Amount_repay", repaymentAmount);
                    insertRepaymentCommand.Parameters.AddWithValue("@IsPaid", 0);


                    insertRepaymentCommand.ExecuteNonQuery();
                    
                }
            //    reader.Close();

            }
            reader.Close();
        }
    }

}