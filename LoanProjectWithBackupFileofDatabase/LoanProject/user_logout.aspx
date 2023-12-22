<%@ Page Title="" Language="C#" MasterPageFile="~/user_MasterPage.master" AutoEventWireup="true" CodeFile="user_logout.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <form id="form1" runat="server">
  <div class="container-fluid search_bus">
    <div class="row">
    <br />
    <br />
    <br />
    <center>
     <div class="container fom1">
       <div class="row">
          <br />
          <br />
          <br />
          <br />
          <h4><b>ARE YOU SURE TO LOGOUT YOUR ACOUNT</b></h4>
           
           &nbsp;
           &nbsp;
           &nbsp;
           <center>
         <div class="row">
           <div class=" col-md-offset-4 col-md-2">
            

               <asp:Button ID="Button1" runat="server" Text="LOGOUT"  
                   CssClass="btn btn-group-justified" onclick="Button1_Click" BackColor="#45343D"
 BorderColor="#45343D" font-family="sans-one" Font-Bold="True" Font-Italic="True" ForeColor="White"
  Width="160px" Height="40px" 
BorderStyle="Solid" BorderWidth="4px"/>
            

           </div>

          <div class="col-md-2">
           
              <asp:Button ID="Button2" runat="server" Text="NOTNOW"  
                  CssClass="btn btn-group-justified" onclick="Button2_Click" BackColor="#45343D"
 BorderColor="#45343D" font-family="sans-one" Font-Bold="True" Font-Italic="True" ForeColor="White"
  Width="160px" Height="40px" 
BorderStyle="Solid" BorderWidth="4px"/>
           
          </div>
         </div>
          
         </center>
         <br />
         <br />
         <br />
         <br />
         <br />
           <img src="end.png" alt="" />
       </div>
       &nbsp;
       &nbsp;
       <br />
       <br />
       <br />

     </div>
    </center>
    <br />
    <br />
    <br />
    </div>
  </div>
  
   
    </form>
  
 

</asp:Content>

