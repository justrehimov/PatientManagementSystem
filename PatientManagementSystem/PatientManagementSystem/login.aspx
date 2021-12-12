
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="PatientManagementSystem.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Patient Management</title>
 <link href="loginstyle.css" rel="stylesheet"/>
<link href="https://fonts.googleapis.com/css2?family=Work+Sans:wght@200;500&display=swap" rel="stylesheet"/>
</head>
<body>
    <div id="content">
        <form id="form" runat="server">
            <label style="font-size:1.6rem;font-weight:bold;margin-bottom:2rem;color:white;">LOG IN PAGE</label>
            <asp:TextBox CssClass="inputs" ID="tb_email" runat="server"  onclick="this.value=''" Text="E-mail"></asp:TextBox>            
            <asp:TextBox CssClass="inputs" ID="tb_password" runat="server"  onclick="this.value=''" Text="Password"></asp:TextBox>
            <asp:Button CssClass="submitbtn" ID="buton_login" runat="server" Text="Log in" OnClick="btn_login_Click"/>
            <a style="text-decoration:none;color:white;font-size:1.1rem;margin-top:2rem;" href="signup.aspx" runat="server">You don't have any account? Sign up</a>
            <a style="text-decoration:none;color:white;font-size:1rem;margin-top:1rem;"  href="changepassword.aspx" runat="server">Forgot password?</a>
     </form>
    </div>
</body>
</html>
