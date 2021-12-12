<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="PatientManagementSystem.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<link href="signup.css" rel="stylesheet"/>
<link href="https://fonts.googleapis.com/css2?family=Work+Sans:wght@200;500&display=swap" rel="stylesheet"/>
</head>
<body>
    <form id="form" runat="server">
        <div class="content">
            <label style="font-size:1.7rem;font-weight:bold;margin-bottom:2.5rem;color:white;">SIGN UP PAGE</label>
            <asp:TextBox CssClass="inputs" ID="tb_name"  onclick="this.value=''" Text="Name" runat="server"></asp:TextBox>
            <asp:TextBox CssClass="inputs" ID="tb_surname"  onclick="this.value=''" Text="Surname" runat="server"></asp:TextBox>
            <asp:TextBox CssClass="inputs" ID="tb_email"  onclick="this.value=''" Text="E-mail" TextMode="Email" runat="server"></asp:TextBox>
            <asp:TextBox CssClass="inputs" ID="tb_password"  onclick="this.value=''" Text="Password" runat="server"></asp:TextBox>
            <asp:Button CssClass="signupbtn" ID="signup_btn" runat="server" Text="Sign up" OnClick="signup_btn_Click"/>
        </div>
    </form>
</body>
</html>
