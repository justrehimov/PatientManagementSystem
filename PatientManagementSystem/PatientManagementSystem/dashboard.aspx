
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="PatientManagementSystem.dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Dashboard</title>
 <link href="dashboard.css" rel="stylesheet"/>
<link href="https://fonts.googleapis.com/css2?family=Work+Sans:wght@200;500&display=swap" rel="stylesheet"/>
</head>
<body>
    <header class="header">
        <ul>
            <li><a href="dashboard.aspx">DASHBOARD</a></li>
            <li><a  href="addpatient.aspx">ADD PATIENT</a></li>
            <li><a  href="showpatient.aspx">SHOW PATIENTS</a></li>
            <li><a href="login.aspx">LOG OUT</a></li>
        </ul>
    </header>
    <form runat="server">
    <div class="content">
     <div class="patients">
         <div class="appeals">
             <asp:TextBox CssClass="outputs" ID="tb1" runat="server" ReadOnly="True"></asp:TextBox>
             <i class="fas fa-signal"></i>
         </div>
         <div class="appeals">
             <asp:TextBox CssClass="outputs"  ID="tb2" runat="server" ReadOnly="True"></asp:TextBox>
             <i class="fas fa-signal"></i>
         </div>
         <div class="appeals">
             <asp:TextBox CssClass="outputs"  ID="tb3" runat="server" ReadOnly="True"></asp:TextBox>
             <i class="fas fa-signal"></i>
         </div>
     </div>
        <div class="patients">
         <div class="appeals2">
             <asp:TextBox CssClass="outputs"  ID="tb4" runat="server" ReadOnly="True"></asp:TextBox>
            <i class="fas fa-signal"></i>
         </div>
         <div class="appeals2">
             <asp:TextBox CssClass="outputs" ID="tb5" runat="server" ReadOnly="True"></asp:TextBox>
             <i class="fas fa-signal"></i>
         </div>
         <div class="appeals2">
             <asp:TextBox  CssClass="outputs" ID="tb6" runat="server" ReadOnly="True"></asp:TextBox>
            <i class="fas fa-signal"></i>
         </div>
     </div>
        <div class="patients">
         <div class="appeals3">
             <asp:TextBox CssClass="outputs"  ID="tb7" runat="server" ReadOnly="True"></asp:TextBox>
            <i class="fas fa-signal"></i>
         </div>
         <div class="appeals3">
             <asp:TextBox  CssClass="outputs"  ID="tb8" runat="server" ReadOnly="True"></asp:TextBox>
             <i class="fas fa-signal"></i>
         </div>
         <div class="appeals3">
             <asp:TextBox  CssClass="outputs" ID="tb9" runat="server" ReadOnly="True"></asp:TextBox>
             <i class="fas fa-signal"></i>
         </div>
     </div>
    </div>
        </form>
<script src="https://kit.fontawesome.com/12df5bbd4f.js" crossorigin="anonymous"></script>
</body>
</html>