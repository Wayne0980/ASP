<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ListBox.aspx.cs" Inherits="ListBox" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
      ListBox
    </title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Product Select</h1>
    </div>
    <asp:ListBox ID="ListBox1" runat="server" SelectionMode="Multiple">
    </asp:ListBox>
    <asp:Button ID="Button2" runat="server" Height="16px" onclick="Button2_Click" 
        Text="&lt;&lt;" />
    <asp:Button ID="Button1" runat="server" Height="16px" onclick="Button1_Click" 
        style="margin-top: 0px" Text="&gt;&gt;" Width="31px" />
    <asp:ListBox ID="ListBox2" runat="server" SelectionMode="Multiple">
    </asp:ListBox>
    </form>
</body>
</html>
