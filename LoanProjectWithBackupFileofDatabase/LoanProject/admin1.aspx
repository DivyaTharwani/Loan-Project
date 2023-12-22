<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="admin1.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container-fluid search_bus">
<br />
<div class="row">
<div class="container fom1">
<center>
<div class="row">
<h2><b>ADMIN PANEL</b></h2>
</div>
</center>
<center>
 <img src="admin.jpg" alt=" admin" />
 </center>

<div class="row">
<form id="form1" runat="server">
<div class="container">
<div class="row">
<div class="col-md-offset-4 col-md-3">
<div class="form-group">
<label for="Textbox1">ADMIN NAME</label><br />
<div class="input-group">
<div class="input-group-addon">
<span class="glyphicon glyphicon-user"></span>
</div>
<asp:TextBox ID="Textbox1" runat="server" CssClass="form-control" 
        ontextchanged="Textbox1_TextChanged"></asp:TextBox>
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
<div class="form-group">
<asp:Button ID="login" runat="server" Text="LOGIN" CssClass="#45343d" 
        onclick="login_Click" BackColor="#45343D" BorderColor="#45343D" font-family="sans-one"
         Font-Bold="True" Font-Italic="True" ForeColor="White" Width="160px" Height="40px" BorderStyle="Solid"
          BorderWidth="4px"/>
    <asp:Label ID="Label1" runat="server" Text=" "></asp:Label>
</div>
</div>
</div>
</div>
</form>
</div>
<br />
<br />
<div class="col-md-offset-2 ">

</div>
</div>
</div>
<br />
<br />
<br />

</div>

</asp:Content>

