<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Products by Suppliers.aspx.cs" Inherits="_3343_StevensL_Lab05.Products_by_Suppliers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Products by Suppliers</title>
</head>
<body>
    <h2>Products by Suppliers</h2>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" DataSourceID="ProdSQL" Height="16px" Width="760px" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Product ID" HorizontalAlign="Left" PageSize="5">
                <Columns>
                    <asp:BoundField DataField="Company_Name" HeaderText="Company_Name" SortExpression="Company_Name" />
                    <asp:BoundField DataField="Contact_Name" HeaderText="Contact_Name" SortExpression="Contact_Name" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                    <asp:BoundField DataField="Product ID" HeaderText="Product ID" ReadOnly="True" SortExpression="Product ID" />
                    <asp:BoundField DataField="Quantity Per Unit" HeaderText="Quantity Per Unit" SortExpression="Quantity Per Unit" />
                    <asp:BoundField DataField="Unit Price" HeaderText="Unit Price" SortExpression="Unit Price" />
                </Columns>
                <EmptyDataTemplate>
                    <a href="javascript:__doPostBack('GridView1','Sort$Company Name')">Company Name</a>
                </EmptyDataTemplate>
                <HeaderStyle BackColor="#333399" ForeColor="White" HorizontalAlign="Left" />
            </asp:GridView>
        </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <asp:SqlDataSource ID="ProdSQL" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString2 %>" ProviderName="<%$ ConnectionStrings:NorthwindConnectionString2.ProviderName %>" SelectCommand="SELECT Company.Company_Name, Company.Contact_Name, Company.Phone, Products.[Product ID], Products.[Quantity Per Unit], Products.[Unit Price] FROM Company INNER JOIN Products ON Company.Supplier_ID = Products.[Supplier ID]"></asp:SqlDataSource>
        <p>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/NorthwindWebApp.aspx">Back to Home...</asp:HyperLink>
        </p>
    </form>
</body>
</html>
