<%@ Page Title="Sumikko Gurashi | 登入" Language="C#" MasterPageFile="~/SumikkoGurashi/MasterPage.master" AutoEventWireup="true" CodeFile="LoginTEST.aspx.cs" Inherits="SumikkoGurashi_LoginTEST" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <%--版面設定--%>
    <style type ="text/css">
        div {            
            margin-left: auto;
            margin-right: auto;
            text-align: center;
            width:unset;
        }
        .validatorCalloutHighlight 
        {
            background-color:antiquewhite;
        }
    </style>
    <%--登入介面--%>
    <br />
    <asp:Label ID="Label2" runat="server" Font-Size="Large" Font-Names="微軟正黑體" ForeColor="#990000" Font-Bold="True"></asp:Label>
    <br /><br />
    <asp:Label ID="Label1" runat="server" Text="帳號：" Font-Names="微軟正黑體" Font-Size="Large"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" Font-Size="Large" MaxLength="10" Wrap="False"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="請輸入正確帳號!" Display="None"></asp:RequiredFieldValidator>
    <%--ajax_ValidatorCalloutExtender--%>
    <ajaxToolkit:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender" runat="server" BehaviorID="RequiredFieldValidator1_ValidatorCalloutExtender" 
        TargetControlID="RequiredFieldValidator1" HighlightCssClass="validatorCalloutHighlight" PopupPosition ="Right" >
    </ajaxToolkit:ValidatorCalloutExtender>
    <br /><br />
    <asp:Label ID="Label3" runat="server" Text="密碼：" Font-Names="微軟正黑體" Font-Size="Large"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" Font-Size="Large" MaxLength="10" TextMode="Password" Wrap="False"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="請輸入正確密碼!" Display="None"></asp:RequiredFieldValidator>
    <%--ajax_ValidatorCalloutExtender--%>
    <ajaxToolkit:ValidatorCalloutExtender ID="ValidatorCalloutExtender2" runat="server" BehaviorID="RequiredFieldValidator2_ValidatorCalloutExtender" 
        Width="200px" TargetControlID="RequiredFieldValidator2" HighlightCssClass="validatorCalloutHighlight" PopupPosition ="Right" >
    </ajaxToolkit:ValidatorCalloutExtender>
    <br /><br />
    <asp:Button ID="Button1" runat="server" Text="GO ✧*｡٩(ˊᗜˋ*)و✧*｡" OnClick="Button1_Click" Font-Size="Large" Height="35px" Width="280px" Font-Names="微軟正黑體" />
    <br /><br />
</asp:Content>

