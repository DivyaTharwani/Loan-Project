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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindUserLoans();
            }
        }

        private void BindUserLoans()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["mysafarConnectionString6"].ConnectionString;
            //using (SqlConnection connection = new SqlConnection(connectionString))
            using (SqlConnection con = new SqlConnection(connectionString))
            {
            //string query = "Select * from Loan where(UserID = '" + Session["ID"] + "') ";
            using (SqlCommand cmd = new SqlCommand("SELECT L.LoanID ,L.UserID, L.AMOUNT , L.Term , R.LRID , R.Amount_repay From Loan L JOIN LoanRepayment R ON L.LoanID = R.LoanID  where(L.UserID = '" + Session["ID"] + "') ", con))
                {
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    gvLoans.DataSource = ds.Tables[0];
                    gvLoans.DataBind();

                    for (int i = 0; i < gvLoans.Rows.Count; i++)
                    {
                        int loanID = Convert.ToInt32(gvLoans.DataKeys[i].Value);
                        GridView gvRepayments = (GridView)gvLoans.Rows[i].FindControl("gvRepayments");

                        DataRow[] repaymentRows = ds.Tables[0].Select("LoanID = " + loanID);
                    
                        gvRepayments.DataSource = repaymentRows;
                        gvRepayments.DataBind();
                    }
                }
            }
        }


        protected void btnPaid_Click(object sender, EventArgs e)
        {
            int rowIndex = Convert.ToInt32(((Button)sender).CommandArgument);
        GridView gvRepayments = (GridView)gvLoans.Rows[rowIndex].FindControl("gvRepayments");

        int repaymentRowIndex = 0;
        int loanID = Convert.ToInt32(gvLoans.DataKeys[rowIndex].Value);
        int loanrepayID = Convert.ToInt32(gvRepayments.DataKeys[repaymentRowIndex].Value);

        string connectionString = ConfigurationManager.ConnectionStrings["mysafarConnectionString6"].ConnectionString;
        using (SqlConnection con = new SqlConnection(connectionString))
        {
            con.Open();
            using (SqlCommand cmdUpdateRepayment = new SqlCommand("UPDATE LoanRepayment SET IsPaid = 1 WHERE LRID = @LRID", con))
            {
                cmdUpdateRepayment.Parameters.AddWithValue("@LRID",loanrepayID);
                cmdUpdateRepayment.ExecuteNonQuery();
            }

            SqlCommand cmdCheckAllPaid = new SqlCommand("SELECT COUNT(*) FROM LoanRepayment WHERE LoanID = @LoanID AND IsPaid = 0", con);
            cmdCheckAllPaid.Parameters.AddWithValue("@LoanID",loanID);
            int unpaidRepaymentsCount = Convert.ToInt32(cmdCheckAllPaid.ExecuteScalar());

            if(unpaidRepaymentsCount ==0)
            {
                SqlCommand cmdUpdateLoan = new SqlCommand("UPDATE Loan SET IsPaid = 1 WHERE LoanID = @LoanID", con);
                cmdUpdateLoan.Parameters.AddWithValue("@LoanID", loanID);
                cmdUpdateLoan.ExecuteNonQuery();
            }
            con.Close();
        }
        BindUserLoans();
        }
    }
