<%@ Page Title="" Language="C#" MasterPageFile="~/user_MasterPage.master" AutoEventWireup="true" CodeFile="Repay_Loan.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="container-fluid search_bus">
 
<br />
<br />
<br />


   <center>
     <div class="fom1">
     <br />
     <br />
<h1><b>YOUR LOAN LIST </b></h1>

<br />

<br />

    <form id="form1" runat="server">
    <div class="container fom1">
<br />
<br />
<asp:GridView ID="gvLoans" runat="server" Width="919px"  CaptionAlign="Top" Font-Bold="True" Font-Italic="True" Font-Names="Arial" AllowSorting="True" 
             CssClass="table-hover" BackColor="#B07C72" BorderStyle="Double" BorderWidth="3px"
              BorderColor="black" ForeColor="#45343D" GridLines="Horizontal" HeaderStyle-BackColor="#45343D" HeaderStyle-BorderColor="black"
               HeaderStyle-BorderStyle="Solid" HeaderStyle-BorderWidth="3px" HeaderStyle-ForeColor="white" CellPadding="5" CellSpacing="4"
                EditRowStyle-Height="7px"   DataKeyNames="LoanID">

        <Columns>
        <asp:BoundField DataField="LoanID" HeaderText="Loan ID" />
        
        <asp:BoundField DataField="AMOUNT" HeaderText="Amount" />
        <asp:BoundField DataField="Term" HeaderText="Term" />
        <asp:TemplateField HeaderText="Repayments">
                <ItemTemplate>
                    <asp:GridView ID="gvRepayments" runat="server" DataKeyNames="LRID">
                         <Columns>
                           <asp:BoundField DataField="LRID" HeaderText="Loan Repay ID" />
                           <asp:BoundField DataField="Amount_repay" HeaderText="Amount To Repay" />
                           <asp:BoundField DataField="IsPaid" HeaderText="Is Paid" />
                           <asp:TemplateField HeaderText="Action">
            <ItemTemplate>
               <asp:Button ID="btnPaid" runat="server" CommandName="Paid" OnClick="btnPaid_Click" CommandArgument='<%# Container.DataItemIndex %>' Visible='<%# Eval("IsPaid").ToString().ToLower() == "false" %>' />
                <asp:Label ID="lblPaid" runat="server" Text="Paid" Visible='<%# Eval("IsPaid").ToString().ToLower() == "true"  %>'></asp:Label>
            
            </ItemTemplate>
        </asp:TemplateField>
                         </Columns>
                    </asp:GridView>
                </ItemTemplate>
            </asp:TemplateField>
    </Columns>



    <FooterStyle BackColor="#45343D" BorderColor="White" BorderStyle="Solid" />
        
        
</asp:GridView>


    </div>
</form>
<br />
<br />
<br />
</div>
</center>
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />

 </div>

</asp:Content>

