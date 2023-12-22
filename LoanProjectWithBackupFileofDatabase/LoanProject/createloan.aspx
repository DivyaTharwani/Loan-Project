<%@ Page Title="" Language="C#" MasterPageFile="~/user_MasterPage.master" AutoEventWireup="true" CodeFile="createloan.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery-2.2.2.min.js" type="text/javascript"></script>
    <script src="js/jquery-1.12.2.min.js" type="text/javascript"></script>
    <script type="text/javascript">

        function f() {
            alert(" Loan Created succesfully ");
        }
   </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div class="container-fluid">
<br />
<center>
<div class="row fom1 ">
<br />
<div class="container search-bus2">
<br />
    
<div class="row ">
<center>
<div class="container search_bus2">

<div class="row fom3">
<h2><b>Create Loan</b></h2>
</div>
<br />
<div class="row fom2">
<form id="form1" Runat= "server">
 <div class="container">
 <div class="row">
 <div class="col-md-3">
         <label for="textBox1">AMOUNT</label>
         </div>
 <div class="col-md-3">
          <div class="input-group">
            <div class="input-group-addon">
              <span class="glyphicon glyphicon-usd"></span>
            </div>
            <asp:TextBox ID="textBox1" runat="server"  Placeholder="enter loan amount" CssClass="form-control"></asp:TextBox>
            </div>
            </div>
 <div class="col-md-2">
            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="*Cannot be Empty" ControlToValidate="TextBox1" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
      
          </div>
         
 </div>  
 <br />    
 <div class="row">
 <div class="col-md-3">       
 <label for="textBox2">TERM</label>
 </div>
 <div class="col-md-3">
 <div class="input-group">
 <div class="input-group-addon">
              <span class="glyphicon glyphicon-tasks"></span>
            
            </div>
 <asp:TextBox ID="textBox2" runat="server"  Placeholder="enter term" CssClass="form-control"></asp:TextBox>
 </div>
 </div>
 <div class="col-md-3">
 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Cannot be Empty"
  ControlToValidate="textBox2" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
 </div>
 </div>
 
 <br />
 <div class="row">
 <div class="col-md-3">
 <label for="textBox3">Date</label>
 </div>
 <div class="col-md-3">
 <div class="input-group">
 <div class="input-group-addon">
 <span class="glyphicon  glyphicon-calendar"></span>
 </div>
 <asp:TextBox ID="textBox3" runat="server" TextMode="Date"  Placeholder="enter date" CssClass="form-control"></asp:TextBox>
 
 </div>
 </div>

 <div class="col-md-3">
 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ErrorMessage="*Cannot be Empty" ControlToValidate="textBox3" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>

 
 </div>
 </div>
 <br />
 
 <br />

<br />
<asp:Label ID="label1" runat="server" Visible="false" ></asp:Label>

 <div class="row">
 <div class=" col-md-9 checkbox">
 <label><input type="checkbox" value="" />
 I ACCEPT THE TERM OR CONDITION
</label>
</div>
 </div>
 <br />
 <div class="row">
 <div class="col-md-offset-2 col-md-3">
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="submit" runat="server"  Text="Apply for Loan" CssClass="btn btn-success" 
         onclick="submit_Click1" OnClientClick="f()" />

 </div>
 
 </div>
 </form>
</div>
</div>
</center>
</div>
<br />
<br />

</div>
<br />
<br />
</div>
<br />
<br />
</center>
</div>
</asp:Content>

