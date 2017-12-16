<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Image.aspx.cs" Inherits="Image" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Image</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <img src="th.jpg" />
        <asp:Image ID="Image1" runat="server" ImageUrl="th.jpg" />
        <asp:Image ID="Image2" runat="server" ImageUrl="th.jpg" />
    </div>
    </form>
</body>
</html>
