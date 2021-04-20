<%@ Page Language="C#" AutoEventWireup="true" CodeFile="huang2.aspx.cs" Inherits="_0515上傳檔案" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Sumikko Gurashi | 留言板</title>
    <style type="text/css">
        .auto-style1 {
            width: 38%;
            height: 176px;
            background-color: #FFFF99;
        }
        .auto-style15 {
            width: 100%;
            height: 136px;
        }
        .auto-style16 {
            width: 142px;
            text-align: center;
        }
        .auto-style17 {
            width: 100%;
            height: 119px;
        }
    </style>
    <style>
        body { background-image: url('../圖/bg.jpg') }
        .auto-style18 {
            width: 229px;
            text-align: left;
        }
        .auto-style19 {
            text-align: center;
            width: 812px;
        }
        .auto-style20 {
            font-size: medium;
            background-color: #FFFF66;
        }
        .auto-style21 {
            font-size: large;
        }
        .auto-style22 {
            width: 229px;
            text-align: left;
            font-size: large;
        }
        .auto-style24 {
            font-size: medium;
        }
        .auto-style28 {
            width: 812px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>

        <asp:Table ID="Table1" runat="server" Width="900" HorizontalAlign="Center">
            <asp:TableRow runat="server" VerticalAlign="Top">
                <asp:TableCell runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="我要留言~"></asp:Label>
            <br />
        </div>
        <%--<ajaxToolkit:NoBot ID="NoBot1" runat="server" CutoffMaximumInstances="2" CutoffWindowSeconds="5" ResponseMinimumDelaySeconds="1" />--%>
        <br />
        
        <table border="1" class="auto-style1">
            <tr>
                <td class="auto-style22">你的名字:</td>
                <td class="auto-style28">
                    <asp:TextBox ID="TextBox1" runat="server" Height="24px" Width="188px"></asp:TextBox>
                    <br /><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="請輸入姓名 " Font-Bold="True" Font-Names="微軟正黑體" Font-Size="Large" ForeColor="#990000"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style22">你的信箱:</td>
                <td class="auto-style28">
                    <asp:TextBox ID="TextBox2" runat="server" Height="24px" Width="188px" TextMode="Email"></asp:TextBox>
                    <br /><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="請輸入信箱 " Font-Bold="True" Font-Names="微軟正黑體" Font-Size="Large" ForeColor="#990000"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style22">你想留言:</td>
                <td class="auto-style28">
                    <asp:TextBox ID="TextBox3" runat="server" Height="24px" Width="188px"></asp:TextBox>
                    <br /><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="留言不可為空　" Font-Bold="True" Font-Names="微軟正黑體" Font-Size="Large" ForeColor="#990000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style18"><span class="auto-style21">你最喜歡的角色</span><br class="auto-style21" />
                    <ajaxToolkit:ComboBox ID="ComboBox1" runat="server" CssClass="auto-style21">
                        <asp:ListItem>白熊</asp:ListItem>
                        <asp:ListItem>炸蝦</asp:ListItem>
                        <asp:ListItem>恐龍</asp:ListItem>
                        <asp:ListItem>河童</asp:ListItem>
                        <asp:ListItem>富士山</asp:ListItem>
                    </ajaxToolkit:ComboBox>
                    <br class="auto-style21" />
                    <br class="auto-style21" />
                    <asp:TextBox ID="TextBox4" runat="server" Height="16px" Width="174px" CssClass="auto-style24"></asp:TextBox>
                    <ajaxToolkit:DynamicPopulateExtender ID="TextBox4_DynamicPopulateExtender" runat="server" BehaviorID="TextBox4_DynamicPopulateExtender" PopulateTriggerControlID="Button2" TargetControlID="TextBox4" ServiceMethod="GetData"/>
                    <br class="auto-style21" />
                    <asp:Button ID="Button2" runat="server" Text="Today"  CssClass="auto-style24" />
                </td>
                <td class="auto-style19">
                    <asp:Button ID="Button1" runat="server" BackColor="#FF6666" Height="36px" Text="我寫好了" Width="104px" OnClick="Button1_Click" CssClass="auto-style20" Font-Bold="False" Font-Size="Small" />
                    <br />
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#4A3C8C" OnClientClick="window.open('huang2_nobot.aspx', 'external', 'width=450, height=250, left=300, top=100')" Font-Size="Medium" >是機器人ㄇ</asp:LinkButton>
                </asp:TableCell>
                
                <asp:TableCell runat="server" >
        <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyField="name" DataSourceID="SqlDataSource1" GridLines="Horizontal" Width="400px">
            <AlternatingItemStyle BackColor="#F7F7F7" />
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <ItemTemplate>
                <table border="1" class="auto-style15">
                    <tr>
                        <td class="auto-style16">
                            <ajaxToolkit:Gravatar ID="Gravatar1" runat="server" DefaultImageBehavior="MysteryMan"  Email='<%# Eval("email") %>' Rating="G" />
                        </td>
                        <td>
                            <table class="auto-style17">
                                <tr>
                                    <td>Name:<asp:Label ID="Label3" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Comment:<asp:Label ID="Label4" runat="server" Text='<%# Eval("comment") %>'></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                Love character:
                <asp:Label ID="Label5" runat="server" Text='<%# Eval("love") %>'></asp:Label>
                <br />
                Today:<asp:Label ID="Label7" runat="server" Text='<%# Eval("time") %>'></asp:Label>
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        </asp:DataList>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [留言板]"></asp:SqlDataSource>
        <br />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>

        


    </form>
</body>
</html>
