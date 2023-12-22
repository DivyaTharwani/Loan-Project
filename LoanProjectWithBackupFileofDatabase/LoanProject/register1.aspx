<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="register1.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery-2.2.2.min.js" type="text/javascript"></script>
    <script src="js/jquery-1.12.2.min.js" type="text/javascript"></script>
    <script type="text/javascript">

        function f() {
            alert(" registration succesfully done");
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
<h2><b>SignUp</b></h2>
</div>
<br />
<div class="row fom2">
<form id="form1" Runat= "server">
 <div class="container">
 <div class="row">
 <div class="col-md-3">
         <label for="textBox1">FIRST NAME</label>
         </div>
 <div class="col-md-3">
          <div class="input-group">
            <div class="input-group-addon">
              <span class="glyphicon glyphicon-user"></span>
            </div>
            <asp:TextBox ID="textBox1" runat="server"  Placeholder="enter firstname" CssClass="form-control"></asp:TextBox>
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
 <label for="textBox2">LAST NAME</label>
 </div>
 <div class="col-md-3">
 <div class="input-group">
 <div class="input-group-addon">
              <span class="glyphicon glyphicon-user"></span>
            
            </div>
 <asp:TextBox ID="textBox2" runat="server"  Placeholder="enter lastname" CssClass="form-control"></asp:TextBox>
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
 <label for="textBox3">EMAIL</label>
 </div>
 <div class="col-md-3">
 <div class="input-group">
 <div class="input-group-addon">
 <span class="glyphicon glyphicon-envelope"></span>
 </div>
 <asp:TextBox ID="textBox3" runat="server"  Placeholder="enter email" CssClass="form-control"></asp:TextBox>
 
 </div>
 </div>

 <div class="col-md-3">
 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ErrorMessage="*Cannot be Empty" ControlToValidate="textBox3" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>

 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="textBox3" ErrorMessage="Incorrect email address" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
 
 </div>
 </div>
 <br />
 <div class="row">
 <div class="col-md-3">       
 <label for="textBox7">MOBILE NUMBER</label>
 </div>
 <div class="col-md-3">
 <div class="input-group">
 <div class="input-group-addon">
              <span class="glyphicon glyphicon-phone"></span>
            
            </div>
 <asp:TextBox ID="textBox7" runat="server"  Placeholder="enter MobileNo" CssClass="form-control" MaxLength="12"></asp:TextBox>
 
 </div>
 </div>
 <div class="col-md-3">
 <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
            ErrorMessage="*Cannot be Empty" ControlToValidate="TextBox7" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>

            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
        ControlToValidate="TextBox7" ErrorMessage="invalidnumber" ForeColor="Red" Display="Dynamic" 
        ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
 
 
 </div>
 </div>
 <br />
<div class="row">
<div class="col-md-3">
<label for="textBox4">USER ID</label>
</div>
<div class="col-md-3">
<div class="input-group">
<div class="input-group-addon">
<span class="glyphicon glyphicon-user"></span>
</div>
<asp:TextBox ID="textBox4" runat="server" Placeholder="enter user id" CssClass="form-control"></asp:TextBox>

</div>
</div>
<div class="col-md-3">
<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ErrorMessage="*Cannot be Empty" ControlToValidate="TextBox4"  ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>

</div>
</div>
<br />
<div class="row">
<div class="col-md-3">
<label for="textBox5">PASSWORD</label>
</div>
<div class="col-md-3">
<div class="input-group">
<div class="input-group-addon">
<span class="glyphicon glyphicon-lock"></span>
</div>
<asp:TextBox ID="textBox5" runat="server" Placeholder="enter password" TextMode="Password"  CssClass="form-control" CausesValidation="True"></asp:TextBox>

            
</div>
 </div> 
 <div class="col-md-3">
 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ErrorMessage="*Cannot be Empty" ControlToValidate="TextBox5"  ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
 
 </div>        
           
         </div>
<br />
<div class="row">
<div class="col-md-3">
<label for="textBox6">CONFIRM PASSWORD</label>
</div>
<div class="col-md-3">
<div class="input-group">
            <div class="input-group-addon">
              <span class="glyphicon glyphicon-user"></span>
            
            </div>
            <asp:TextBox ID="textBox6" runat="server"  Placeholder="rewrite password" TextMode="Password" CssClass="form-control"></asp:TextBox>
           
          </div>
</div>
<div class="col-md-3">
 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ErrorMessage=" *Cannot be Empty" ControlToValidate="TextBox6" ForeColor="Red" Display="Dynamic"  ></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="TextBox5" ControlToValidate="TextBox6" ForeColor="Red" Display="Dynamic"  
            ErrorMessage="password not matched"></asp:CompareValidator>

</div>
</div>
<br />
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
 <asp:Button ID="submit" runat="server"  Text="Submit" CssClass="btn btn-success" 
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