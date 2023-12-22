<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login_form.aspx.cs" Inherits="login_form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link rel="stylesheet" type="text/css" href="StyleSheet.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container-fluid search_bus">
<br />
<div class="row">
<div class="container fom1">
<center>
<div class="row">
<h2><b>Login User Acount</b></h2>
</div>
</center>
<div class="row">
<form id="form1" runat="server">
<div class="container">
<div class="row">
<div class="col-md-offset-4 col-md-3">
<div class="form-group">
<label for="Textbox1">USERNAME</label><br />
<div class="input-group">
<div class="input-group-addon">
<span class="glyphicon glyphicon-user"></span>
</div>
<asp:TextBox ID="Textbox1" runat="server" CssClass="form-control"></asp:TextBox>
</div>
</div>

<div class="form-group">
<label for="Textbox2">PASSWORD</label>
<div class="input-group">
<div class="input-group-addon">
<span class="glyphicon glyphicon-lock"></span>
</div>
<asp:TextBox ID="Textbox2" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
</div>
</div>
<br />
<div class="col-md-2">
<div class="form-group">
<asp:Button ID="login" runat="server" Text="LOGIN" CssClass="btn btn-success" 
        onclick="login_Click" BackColor="#45343D"
 BorderColor="#45343D" font-family="sans-one" Font-Bold="True" Font-Italic="True" ForeColor="White"
  Width="100px" Height="40px" 
BorderStyle="Solid" BorderWidth="4px"  />
        <br />
        &nbsp;
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
</div>
</div>



</div>
</div>
</form>
</div>
</div>
</div>
<br />
<br />
</div>

</asp:Content>

