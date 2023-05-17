<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Supplier Details.aspx.cs" Inherits="_3343_StevensL_Lab05.Supplier_Details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Supplier Details</h2>
        </div>
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="CDS" Height="50px" Width="188px" DataKeyNames="Customer_ID">
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="Supplier_ID" HeaderText="Supplier ID" SortExpression="Supplier_ID" />
                <asp:BoundField DataField="Company_Name" HeaderText="Company Name" SortExpression="Company_Name" />
                <asp:BoundField DataField="Contact_Name" HeaderText="Contact Name" SortExpression="Contact_Name" />
                <asp:BoundField DataField="Contact_Title" HeaderText="Contact Title" SortExpression="Contact_Title" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:BoundField DataField="Customer_ID" HeaderText="Company ID" ReadOnly="True" SortExpression="Customer_ID" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="CDS" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString3 %>" DeleteCommand="DELETE FROM [Company] WHERE [Customer_ID] = @Customer_ID" InsertCommand="INSERT INTO [Company] ([Supplier_ID], [Company_Name], [Contact_Name], [Contact_Title], [Phone], [Customer_ID]) VALUES (@Supplier_ID, @Company_Name, @Contact_Name, @Contact_Title, @Phone, @Customer_ID)" SelectCommand="SELECT [Supplier_ID], [Company_Name], [Contact_Name], [Contact_Title], [Phone], [Customer_ID] FROM [Company] ORDER BY [Supplier_ID]" UpdateCommand="UPDATE [Company] SET [Supplier_ID] = @Supplier_ID, [Company_Name] = @Company_Name, [Contact_Name] = @Contact_Name, [Contact_Title] = @Contact_Title, [Phone] = @Phone WHERE [Customer_ID] = @Customer_ID">
            <DeleteParameters>
                <asp:Parameter Name="Customer_ID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Supplier_ID" Type="Int32" />
                <asp:Parameter Name="Company_Name" Type="String" />
                <asp:Parameter Name="Contact_Name" Type="String" />
                <asp:Parameter Name="Contact_Title" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="Customer_ID" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Supplier_ID" Type="Int32" />
                <asp:Parameter Name="Company_Name" Type="String" />
                <asp:Parameter Name="Contact_Name" Type="String" />
                <asp:Parameter Name="Contact_Title" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="Customer_ID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Customer_ID" DataSourceID="CDS" GridLines="Vertical" Width="709px">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="Supplier_ID" HeaderText="Supplier ID" SortExpression="Supplier_ID" />
                <asp:BoundField DataField="Company_Name" HeaderText="Company Name" SortExpression="Company_Name" />
                <asp:BoundField DataField="Contact_Name" HeaderText="Contact Name" SortExpression="Contact_Name" />
                <asp:BoundField DataField="Contact_Title" HeaderText="Contact Title" SortExpression="Contact_Title" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:BoundField DataField="Customer_ID" HeaderText="Company ID" SortExpression="Customer_ID" ReadOnly="True" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/NorthwindWebApp.aspx">Back to Home...</asp:HyperLink>
    </form>
</body>
</html>
