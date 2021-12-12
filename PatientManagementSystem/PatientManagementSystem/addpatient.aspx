
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addpatient.aspx.cs" Inherits="PatientManagementSystem.addpatient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Add Patient</title>
 <link href="addpatient.css" rel="stylesheet"/>
<link href="https://fonts.googleapis.com/css2?family=Work+Sans:wght@200;500&display=swap" rel="stylesheet"/>
</head>
<body>
    <header class="header">
        <ul>
            <li><a href="dashboard.aspx">DASHBOARD</a></li>
            <li><a href="addpatient.aspx">ADD PATIENT</a></li>
            <li><a href="showpatient.aspx">SHOW PATIENTS</a></li>
            <li><a href="login.aspx">LOG OUT</a></li>
        </ul>
    </header>
    <div class="content">
     <form id="form" runat="server">
         <asp:TextBox CssClass="inputs" ID="name" runat="server"  onclick="this.value=''" Text="Name"></asp:TextBox>
         <asp:TextBox CssClass="inputs" ID="surname" runat="server"   onclick="this.value=''" Text="Surname"></asp:TextBox>
         <asp:TextBox CssClass="inputs" ID="fathername" runat="server"  onclick="this.value=''" Text="Father name"></asp:TextBox>
         <asp:TextBox CssClass="inputs" ID="phone" runat="server" onclick="this.value=''" Text="Phone"></asp:TextBox>
         <asp:TextBox CssClass="inputs" ID="region" runat="server"  onclick="this.value=''" Text="Region"></asp:TextBox>
         <asp:TextBox CssClass="inputs" ID="email" runat="server" TextMode="Email"  onclick="this.value=''" Text="E-mail"></asp:TextBox>
         <asp:TextBox CssClass="inputs" ID="birthday" runat="server" TextMode="Date"  onclick="this.value=''" Text="Password"></asp:TextBox>
         <asp:DropDownList CssClass="inputs" ID="appeals" runat="server">
                <asp:ListItem Text="Headache" Value="headache"></asp:ListItem>
                <asp:ListItem Text="Heartpain" Value="heartpain"></asp:ListItem>
                <asp:ListItem Text="Nausea" Value="nausea"></asp:ListItem>
                <asp:ListItem Text="Vomiting" Value="vomiting"></asp:ListItem>
                <asp:ListItem Text="Flu" Value="flu"></asp:ListItem>
                <asp:ListItem Text="Bronchitis" Value="bronchitis"></asp:ListItem>
                <asp:ListItem Text="Corona" Value="corona"></asp:ListItem>
                <asp:ListItem Text="Cancer" Value="cancer"></asp:ListItem>
                <asp:ListItem Text="Plague" Value="plague"></asp:ListItem>
        </asp:DropDownList>
         <asp:Button CssClass="submitbtn" ID="submit_btn" runat="server" Text="Add Patient" OnClick="submit_btn_Click" />
     </form>
    </div>
</body>
</html>