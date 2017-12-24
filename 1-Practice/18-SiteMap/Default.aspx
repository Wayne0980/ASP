<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SiteMapPath ID="SiteMapPath1" runat="server">
        </asp:SiteMapPath>
        <asp:TreeView ID="TreeView1" runat="server" ShowLines="True">
            <Nodes>
                <asp:TreeNode NavigateUrl="~/Default.aspx" Text="產品總覽" Value="產品總覽">
                    <asp:TreeNode NavigateUrl="~/Default2.aspx" Text="Page 2" Value="2">
                        <asp:TreeNode Text="新節點" Value="新節點">
                            <asp:TreeNode Text="新節點" Value="新節點"></asp:TreeNode>
                        </asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode Text="新節點" Value="新節點"></asp:TreeNode>
                </asp:TreeNode>
            </Nodes>
        </asp:TreeView>
    
    </div>
    </form>
</body>
</html>
