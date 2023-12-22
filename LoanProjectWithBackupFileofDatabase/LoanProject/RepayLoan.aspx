<%@ Page Title="" Language="C#" MasterPageFile="~/user_MasterPage.master" AutoEventWireup="true" CodeFile="RepayLoan.aspx.cs" Inherits="Default2" %>

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
<h1><b> LOAN LIST </b></h1>

<br />

<br />

    <form id="form1" runat="server">
    <div class="container fom1">
<br />
<br />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" Width="919px"  CaptionAlign="Top" Font-Bold="True" Font-Italic="True" Font-Names="Arial" AllowSorting="True" 
             CssClass="table-hover" BackColor="#B07C72" BorderStyle="Double" BorderWidth="3px"
              BorderColor="black" ForeColor="#45343D" GridLines="Horizontal" HeaderStyle-BackColor="#45343D" HeaderStyle-BorderColor="black"
               HeaderStyle-BorderStyle="Solid" HeaderStyle-BorderWidth="3px" HeaderStyle-ForeColor="white" CellPadding="5" CellSpacing="4"
                EditRowStyle-Height="7px" OnRowCommand="GridView1_RowCommand">

    <Columns>
        <asp:BoundField DataField="LRID" HeaderText="Loan Repayment ID" />
        <asp:BoundField DataField="Amount_repay" HeaderText="Amount" />
        
        <asp:TemplateField HeaderText="RePay Loan">
            <ItemTemplate>
                <asp:Button ID="btnPay" runat="server" CommandName="Pay" CommandArgument='<%# Eval("LRID") %>' Text="Pay" Visible='<%# Convert.ToBoolean(Eval("IsPaid")) == false %>' />
                                <asp:Label ID="lblstatus" runat="server" Text="Paid" Visible='<%# Convert.ToBoolean(Eval("IsPaid")) %>'></asp:Label>
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

