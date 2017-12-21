<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProductDetails.aspx.cs" Inherits="ProductDetails" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
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
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString1 %>" 
        ProviderName="<%$ ConnectionStrings:NorthwindConnectionString1.ProviderName %>" 
        SelectCommand="SELECT * from Products where ProductName=@paramProductName and CategoryID=@paramCategoryID and SupplierID=@paramSupplierID">
        <SelectParameters>
            <asp:QueryStringParameter Name="paramProductName" 
                QueryStringField="ProductName" />
            <asp:QueryStringParameter Name="paramCategoryID" 
                QueryStringField="CategoryID" />
            <asp:QueryStringParameter Name="paramSupplierID" 
                QueryStringField="SupplierID" />
        </SelectParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
