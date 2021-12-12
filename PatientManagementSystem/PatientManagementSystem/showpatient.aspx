
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="showpatient.aspx.cs" Inherits="PatientManagementSystem.showpatient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Patient Management</title>
 <link href="showpatientstyle.css" rel="stylesheet"/>
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
    <form id="form" runat="server">
        <div id="content">
            <div id="showpart1" >
                <asp:TextBox CssClass="searchbox" ID="tb_search" runat="server"></asp:TextBox>
                <asp:Button CssClass="searchbtn" ID="btn_search" runat="server" Text="Search" OnClick="btn_search_Click1" />
            </div>

            <div id="showpart2">
                <asp:GridView CssClass="gridview" ID="gridview" runat="server" AutoGenerateColumns="False" CellPadding="5" CellSpacing="20" EmptyDataText="No data found" ForeColor="#333333"  GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField  DataField ="name" HeaderText="Name" ReadOnly="True"/>
                        <asp:BoundField  DataField ="surname" HeaderText="Surname" ReadOnly="True"/>
                        <asp:BoundField  DataField ="fathername" HeaderText="Father Name" ReadOnly="True"/>
                        <asp:BoundField  DataField ="region" HeaderText="Region" ReadOnly="True"/>
                        <asp:BoundField  DataField ="phone" HeaderText="Phone" ReadOnly="True"/>
                        <asp:BoundField  DataField ="email" HeaderText="E-mail" ReadOnly="True"/>
                        <asp:BoundField  DataField ="birthday" HeaderText="Birthday" ReadOnly="True"/>
                        <asp:BoundField  DataField ="appeals" HeaderText="Appeal" ReadOnly="True"/>
                    </Columns>                  
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>              
            </div>
            </div>
        </form>
</body>
</html>
