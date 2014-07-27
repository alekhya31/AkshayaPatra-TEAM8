<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="AkshayaPatra.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CodeForGoodConnectionString2 %>" DeleteCommand="DELETE FROM [ing] WHERE [icode] = @icode" InsertCommand="INSERT INTO [ing] ([icode], [iname], [cost]) VALUES (@icode, @iname, @cost)" SelectCommand="SELECT [icode], [iname], [cost] FROM [ing]" UpdateCommand="UPDATE [ing] SET [iname] = @iname, [cost] = @cost WHERE [icode] = @icode">
            <DeleteParameters>
                <asp:Parameter Name="icode" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="icode" Type="String" />
                <asp:Parameter Name="iname" Type="String" />
                <asp:Parameter Name="cost" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="iname" Type="String" />
                <asp:Parameter Name="cost" Type="Decimal" />
                <asp:Parameter Name="icode" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="icode" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="icode" HeaderText="icode" ReadOnly="True" SortExpression="icode" />
                <asp:BoundField DataField="iname" HeaderText="iname" SortExpression="iname" />
                <asp:BoundField DataField="cost" HeaderText="cost" SortExpression="cost" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
    </form>
</body>
</html>
