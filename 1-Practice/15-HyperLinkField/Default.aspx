<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" EmptyDataText="沒有資料錄可顯示。">
            <Columns>
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" 
                    SortExpression="ProductName" />
                <asp:BoundField DataField="SupplierID" HeaderText="SupplierID" 
                    SortExpression="SupplierID" />
                <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" 
                    SortExpression="CategoryID" />
                <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" 
                    SortExpression="UnitPrice" />
                <asp:HyperLinkField DataNavigateUrlFields="ProductName,CategoryID,SupplierID" 
                    DataNavigateUrlFormatString="ProductDetails.aspx?ProductName={0}&amp;CategoryID={1}&amp;SupplierID={2}" 
                    DataTextField="ProductName" HeaderText="明細" Text="詳細資料" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString1 %>" 
            ProviderName="<%$ ConnectionStrings:NorthwindConnectionString1.ProviderName %>" 
            SelectCommand="SELECT [ProductName], [SupplierID], [CategoryID], [UnitPrice] FROM [Products]">
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
