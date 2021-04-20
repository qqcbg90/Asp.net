<%@ Page Language="C#" AutoEventWireup="true" CodeFile="會員重整.aspx.cs" Inherits="SumikkoGurashi_會員重整" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="background-image:url(../圖/topbg.png); background-repeat:no-repeat; background-size:cover">
    <form id="form1" runat="server">
        <style type ="text/css">
        .gv {          
            margin-left: auto;
            margin-right: auto;
            text-align: center;
        }
    </style>
        <div class="gv">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" Caption="會員管理" CellPadding="4" DataKeyNames="會員編號" DataSourceID="SqlDataSource2" GridLines="Horizontal">
                <Columns>
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="會員編號" HeaderText="會員編號" ReadOnly="True" SortExpression="會員編號" />
                    <asp:BoundField DataField="會員帳號" HeaderText="會員帳號" SortExpression="會員帳號" />
                    <asp:BoundField DataField="會員密碼" HeaderText="會員密碼" SortExpression="會員密碼" />
                    <asp:BoundField DataField="會員暱稱" HeaderText="會員暱稱" SortExpression="會員暱稱" />
                    <asp:BoundField DataField="會員信箱" HeaderText="會員信箱" SortExpression="會員信箱" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerSettings PageButtonCount="3" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [會員] WHERE [會員編號] = @會員編號" InsertCommand="INSERT INTO [會員] ([會員編號], [會員帳號], [會員密碼], [會員暱稱], [會員信箱]) VALUES (@會員編號, @會員帳號, @會員密碼, @會員暱稱, @會員信箱)" SelectCommand="SELECT [會員編號], [會員帳號], [會員密碼], [會員暱稱], [會員信箱] FROM [會員]" UpdateCommand="UPDATE [會員] SET [會員帳號] = @會員帳號, [會員密碼] = @會員密碼, [會員暱稱] = @會員暱稱, [會員信箱] = @會員信箱 WHERE [會員編號] = @會員編號">
                <DeleteParameters>
                    <asp:Parameter Name="會員編號" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="會員編號" Type="Int32" />
                    <asp:Parameter Name="會員帳號" Type="String" />
                    <asp:Parameter Name="會員密碼" Type="String" />
                    <asp:Parameter Name="會員暱稱" Type="String" />
                    <asp:Parameter Name="會員信箱" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="會員帳號" Type="String" />
                    <asp:Parameter Name="會員密碼" Type="String" />
                    <asp:Parameter Name="會員暱稱" Type="String" />
                    <asp:Parameter Name="會員信箱" Type="String" />
                    <asp:Parameter Name="會員編號" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
