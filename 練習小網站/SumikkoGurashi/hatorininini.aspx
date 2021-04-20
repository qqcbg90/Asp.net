<%@ Page Language="C#" AutoEventWireup="true" CodeFile="hatorininini.aspx.cs" Inherits="Default9" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Sumikko Gurashi | 小測驗
    </title>
</head>
<body style="background-image:url(../圖/bg.jpg); background-repeat: repeat; background-attachment: fixed; font-family:微軟正黑體; font-size: large; color: #7E634D;";>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <fieldset>
                        <br />
                        <%--ajax--MutuallyExclusiveCheckBox--%>
                        <%--No1--%>
                        <asp:Label ID="Label1" runat="server" Text="誰的口頭禪是：啊～做不下去了啦～"></asp:Label>
                        <ajaxToolkit:MutuallyExclusiveCheckBoxExtender ID="MutuallyExclusiveCheckBoxExtender1" runat="server" TargetControlID="CheckBox1" Key="No1"/>
                        <ajaxToolkit:MutuallyExclusiveCheckBoxExtender ID="MutuallyExclusiveCheckBoxExtender2" runat="server" TargetControlID="CheckBox2" Key="No1" />
                        <ajaxToolkit:MutuallyExclusiveCheckBoxExtender ID="MutuallyExclusiveCheckBoxExtender3" runat="server" TargetControlID="CheckBox3" Key="No1" />
                        <br />
                        <asp:CheckBox ID="CheckBox1" runat="server" Text="粉圓" />
                        <asp:CheckBox ID="CheckBox2" runat="server" Text="灰塵"/>
                        <asp:CheckBox ID="CheckBox3" runat="server" Text="幽靈"/>
                        <br /><br />
                        <%--No2--%>
                        <asp:Label ID="Label2" runat="server" Text="幽靈喜歡的事物下列何者正確?"></asp:Label>
                        <ajaxToolkit:MutuallyExclusiveCheckBoxExtender ID="MutuallyExclusiveCheckBoxExtender4" runat="server" TargetControlID="CheckBox4" Key="No2"/>
                        <ajaxToolkit:MutuallyExclusiveCheckBoxExtender ID="MutuallyExclusiveCheckBoxExtender5" runat="server" TargetControlID="CheckBox5" Key="No2" />
                        <ajaxToolkit:MutuallyExclusiveCheckBoxExtender ID="MutuallyExclusiveCheckBoxExtender6" runat="server" TargetControlID="CheckBox6" Key="No2" />
                        <br />
                        <asp:CheckBox ID="CheckBox4" runat="server" Text="園藝" />
                        <asp:CheckBox ID="CheckBox5" runat="server" Text="烘焙"/>
                        <asp:CheckBox ID="CheckBox6" runat="server" Text="打掃"/>
                        <br /><br />
                        <%--No3--%>
                        <asp:Label ID="Label3" runat="server" Text="誰是角落生物中唯一積極的角色呢?"></asp:Label>
                        <ajaxToolkit:MutuallyExclusiveCheckBoxExtender ID="MutuallyExclusiveCheckBoxExtender7" runat="server" TargetControlID="CheckBox7" Key="No3"/>
                        <ajaxToolkit:MutuallyExclusiveCheckBoxExtender ID="MutuallyExclusiveCheckBoxExtender8" runat="server" TargetControlID="CheckBox8" Key="No3" />
                        <ajaxToolkit:MutuallyExclusiveCheckBoxExtender ID="MutuallyExclusiveCheckBoxExtender9" runat="server" TargetControlID="CheckBox9" Key="No3" />
                        <br />
                        <asp:CheckBox ID="CheckBox7" runat="server" Text="包袱" />
                        <asp:CheckBox ID="CheckBox8" runat="server" Text="雜草"/>
                        <asp:CheckBox ID="CheckBox9" runat="server" Text="炸蝦尾"/>
                        <br /><br />
                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                        <br /><br />
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/圖/btn11.png" OnClick="ImageButton1_Click" />
                        <%--ajax_HoverMenu--%>
                        <ajaxToolkit:HoverMenuExtender ID="HoverMenuExtender1" runat="server" TargetControlID="Image1" PopupControlID="Table1" PopupPosition="Right"></ajaxToolkit:HoverMenuExtender>
                        <br />
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/圖/ni0519.png" Height="136px" Width="216px" />
                        <asp:Table ID="Table1" runat="server">
                            <asp:TableRow>
                                <asp:TableCell>正確答案：</asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell>第一題答案是粉圓<br /></asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell>第二題答案是打掃<br /></asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell>第三題答案是雜草</asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell>
                                    <asp:Button ID="Button1" runat="server" Text="再試一次" OnClick="Button1_Click" />
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </fieldset>
                </ContentTemplate>
            </asp:UpdatePanel>            
        </div>        
    </form>
</body>
</html>
