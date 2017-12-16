<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CheckBoxList.aspx.cs" Inherits="CheckBoxList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> CheckBoxList </title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h>Select the team member</h>
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="True" 
            onselectedindexchanged="CheckBoxList1_SelectedIndexChanged">
            <asp:ListItem>Wayne</asp:ListItem>
            <asp:ListItem>Peter</asp:ListItem>
            <asp:ListItem>Troy</asp:ListItem>
            <asp:ListItem Value=" ">Andrew</asp:ListItem>
            <asp:ListItem>Luc</asp:ListItem>
            <asp:ListItem>Scott</asp:ListItem>
            <asp:ListItem>Ethan</asp:ListItem>
            <asp:ListItem>Neil</asp:ListItem>
        </asp:CheckBoxList>
    
    </div>
    <asp:Label ID="Label1" runat="server" Text=" "></asp:Label>
    </form>
</body>
</html>
