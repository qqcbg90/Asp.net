<%@ Page Title="Sumikko Gurashi | 更換頭貼" Language="C#" MasterPageFile="~/SumikkoGurashi/MasterPage.master" AutoEventWireup="true" CodeFile="yukiki.aspx.cs" Inherits="SumikkoGurashi_yukiki" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <style>
    .toggler { width: 500px; height: 150px; position: relative; }
    #button { padding: .5em 1em; text-decoration: none; }
    #effect { width: 240px; height: 120px; padding: 0.4em; position: relative; background: #fff; }
    #effect h4 { margin: 0; padding: 0.4em; text-align: center; }
  </style>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    var state = true;
    $( "#button" ).on( "mouseover", function() {
      if ( state ) {
        $( "#effect" ).animate({
          backgroundColor: "#FFB8B1",
          color: "#7E634D",
          width: 300
        }, 1000 );
      } else {
        $( "#effect" ).animate({
          backgroundColor: "#fff",
          color: "#000",
          width: 240
        }, 1000 );
      }
      state = !state;
    });
  } );
  </script>
    <%--jQuery_Color Animation--%>
    <br />
    <div class="toggler">
        <div id="effect" class="ui-widget-content ui-corner-all">
            <h4 class="ui-widget-header ui-corner-all">✿更換頭貼✿</h4>
            <br /><br />可以換成自己喜歡的頭貼！
        </div>
    </div>
    <button id="button" class="ui-state-default ui-corner-all">ᕕ ( ᐛ ) ᕗ</button><br /><br /><br />

    <%--版面設定--%>
    <style type ="text/css">
        div {          
            margin-left: auto;
            margin-right: auto;
            text-align: center;            
        }
    </style>

    您目前的頭貼為：<br />
    <asp:Image ID="Image1" runat="server" Height="150" /><br /><br />
    上傳新頭貼：<br />
    <ajaxToolkit:AjaxFileUpload ID="AjaxFileUpload1" runat="server" OnUploadComplete="AjaxFileUpload1_UploadComplete" MaximumNumberOfFiles="1" Width="1000" />

</asp:Content>

