<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="changepassword.aspx.cs" Inherits="PatientManagementSystem.changepassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<link href="changepassword.css" rel="stylesheet"/>
<link href="https://fonts.googleapis.com/css2?family=Work+Sans:wght@200;500&display=swap" rel="stylesheet"/>
</head>
<body>
    <form id="form" class="form" runat="server">
        <div class="content">
            <label style="font-size:1.7rem;font-weight:bold;margin-bottom:2.5rem;color:white;">CHANGE PASSWORD</label>
            <div class="email_sendbtn" runat="server">
            <asp:TextBox CssClass="input_email" ID="tb_email"  onclick="this.value=''" TextMode="Email" Text="E-mail" runat="server"></asp:TextBox>
            <asp:Button CssClass="sendbtn" ID="send_btn" runat="server" Text="Send" OnClick="send_btn_Click"/>
            </div>
            <asp:TextBox CssClass="inputs" ID="tb_code"  onclick="this.value=''" Enabled="false" Text="Confirm Code" runat="server"></asp:TextBox>
            <asp:TextBox CssClass="inputs" ID="tb_password"  onclick="this.value=''" Enabled="false" Text="New Password" runat="server"></asp:TextBox>
            <asp:Button CssClass="changebtn" ID="change_btn" runat="server" Text="Change Password" Enabled="false" OnClick="change_btn_Click"/>
        </div>
    </form>
</body>
</html>
