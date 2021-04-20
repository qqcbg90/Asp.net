<%@ Page Language="C#" AutoEventWireup="true" CodeFile="huang2_nobot.aspx.cs" Inherits="_0520_nobot" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
   <%--<style>
   body { background-image: url('http://localhost:52649/圖片/bg.jpg') }
       .auto-style1 {
           font-size: large;
       }
   </style>--%>
    </head>
    <script>
        function openWin( windowURL, windowName, windowFeatures ) {
        return window.open( windowURL, windowName, windowFeatures ) ;
        }
</script>
<body style="background-image:url('http://localhost:52649/圖片/bg.jpg'); background-repeat: repeat; background-attachment: fixed;">
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
            <br />
            <ajaxToolkit:NoBot ID="NoBot1" runat="server" CutoffMaximumInstances="2" CutoffWindowSeconds="5" ResponseMinimumDelaySeconds="1" />
            <br />
            
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Label ID="lblString" runat="server" CssClass="auto-style1"></asp:Label>
            <br />
            <br />
        </div>

    </form>
</body>
</html>
