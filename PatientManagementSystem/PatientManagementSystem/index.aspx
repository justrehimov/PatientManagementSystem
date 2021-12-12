
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs"  Inherits="PatientManagementSystem.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Patient Management</title>
 <link href="stylee.css" rel="stylesheet"/>
<link href="https://fonts.googleapis.com/css2?family=Work+Sans:wght@200;500&display=swap" rel="stylesheet"/>
</head>
<body>
    <header class="header">
        <ul>
            <li><a href="dashboard.aspx">DASHBOARD</a></li>
            <li><a  href="addpatient.aspx">ADD PATIENT</a></li>
            <li><a  href="showpatient.aspx">SHOW PATIENTS</a></li>
            <li><a runat="server" href="login.aspx"><% if(Session["user"] == null){ Response.Write("LOG IN"); }else{ Response.Write("LOG OUT"); }  %></a></li>
        </ul>
    </header>
    <div class="content">
        <h1>Welcome Patient Management System</h1>
    </div>
</body>
</html>
