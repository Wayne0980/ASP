<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DropDownList.aspx.cs" Inherits="DropDownList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem Selected="True" Value="0">== Select Name ==</asp:ListItem>
            <asp:ListItem Value="1">Wayne</asp:ListItem>
            <asp:ListItem Value="2">Peter</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DropDownList2_SelectedIndexChanged">
        </asp:DropDownList>
    
    </div>
    <asp:Label ID="Label1" runat="server" Text=" "></asp:Label>
    </form>
</body>
</html>
