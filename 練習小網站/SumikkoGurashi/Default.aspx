<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="SumikkoGurashi_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="background-image:url(../圖/bg.jpg); background-repeat: repeat; background-attachment: fixed; font-family:微軟正黑體; font-size: large; color: #7E634D;";>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label15" runat="server" Font-Names="微軟正黑體" Font-Size="Large" Text="個性："></asp:Label>
            <asp:DropDownList ID="DropDownList3" runat="server" Font-Names="微軟正黑體" Font-Size="Large">
                <asp:ListItem>活潑</asp:ListItem>
                <asp:ListItem>安靜</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="Label16" runat="server" Font-Names="微軟正黑體" Font-Size="Large" Text="體型："></asp:Label>
            <asp:DropDownList ID="DropDownList4" runat="server" Font-Names="微軟正黑體" Font-Size="Large">
                <asp:ListItem>大</asp:ListItem>
                <asp:ListItem>小</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:Label ID="Label17" runat="server" Font-Names="微軟正黑體" Font-Size="X-Large" Text="推薦你："></asp:Label>
            <asp:Label ID="Label18" runat="server" Font-Names="微軟正黑體" Font-Size="X-Large"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button3" runat="server" Font-Names="微軟正黑體" Font-Size="Large" OnClick="Button3_Click" Text="確定" />
        </div>
    </form>
</body>
</html>
