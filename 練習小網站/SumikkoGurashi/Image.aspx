<%@ Page Title="Sumikko Gurashi | 圖片集" Language="C#" MasterPageFile="~/SumikkoGurashi/MasterPage.master" AutoEventWireup="true" CodeFile="Image.aspx.cs" Inherits="SumikkoGurashi_Image" %>

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
        .auto-style1 {
            width: 437px;
            height: 80px;
        }
    </style>

    <%--燈箱jQuery設定--%>
    <script src='https://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js'></script>
    <link rel="stylesheet" href="https://unpkg.com/nanogallery2/dist/css/nanogallery2.min.css" type="text/css" />
    <script type="text/javascript" src="https://unpkg.com/nanogallery2/dist/jquery.nanogallery2.min.js"></script>

    <%--燈箱套用--%>
    <div id="nanogallery2" ></div>
    <script>        
        $("#nanogallery2").nanogallery2({
        thumbnailWidth: 245, // 縮圖寬度
        thumbnailHeight: 160, // 縮圖高度
        galleryDisplayMode: "moreButton",
        maxItemsPerLine: 3,
        galleryDisplayMoreStep: 3, // 最多顯示幾行
        //galleryMaxItems:4,
        items: [{
        src: '../圖/a1.png',
        srct: '../圖/a1.png',
        title: 'Image 01'
        }, {
        src: '../圖/a2.png',
        srct: '../圖/a2.png',
        title: 'Image 02'
        }, {
        src: '../圖/a3.png',
        srct: '../圖/a3.png',
        title: 'Image 03'
        }, {
        src: '../圖/a4.png',
        srct: '../圖/a4.png',
        title: 'Image 04'
        }, {
        src: '../圖/a5.png',
        srct: '../圖/a5.png',
        title: 'Image 05'
        }, {
        src: '../圖/a6.png',
        srct: '../圖/a6.png',
        title: 'Image 06'
        }, {
        src: '../圖/a7.png',
        srct: '../圖/a7.png',
        title: 'Image 07'
        }, {
        src: '../圖/a8.png',
        srct: '../圖/a8.png',
        title: 'Image 08'
        }, {
         src: '../圖/a9.png',
        srct: '../圖/a9.png',
        title: 'Image 09'
        }, {
        src: '../圖/a10.png',
        srct: '../圖/a10.png',
        title: 'Image 10'
        }, {
        src: '../圖/a11.png',
        srct: '../圖/a11.png',
        title: 'Image 11'
        }, {
        src: '../圖/a12.png',
        srct: '../圖/a12.png',
        title: 'Image 12'
        }]
        });
    </script>    
    
    <%--jQuery_progressbar--%>
    <script src="jquery-3.4.1.min.js"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

    <script>
    $( function() {
      var progressbar = $( "#progressbar" ),
      progressLabel = $( ".progress-label" );
      progressbar.progressbar({
      value: false,
      change: function() {
        progressLabel.text( progressbar.progressbar( "value" ) + "%" );
      },
      complete: function() {
          progressLabel.text("Complete!");
          document.location.href="moreImage.aspx";
      }
      });
 
      function progress() {
          var val = progressbar.progressbar("value") || 0;

      progressbar.progressbar( "value", val + 2 );
 
      if ( val < 99 ) {
        setTimeout( progress, 80 );
      }
      }
      setTimeout( progress, 2000 );
    } ); 
    </script>

    <style>
    .ui-progressbar {
     position: relative; 
     width:500px;
     margin-left: auto;
     margin-right: auto;
     text-align: center;
    }
    .progress-label {
     position: absolute;
     left: 50%;
     top: 4px;
     font-weight: bold;
     text-shadow: 1px 1px 0 #fff;
    }
    </style>

    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <asp:imagebutton runat="server" ImageUrl="../圖/btn12.png" ID="btnMore" OnClick="btnMore_Click" ></asp:imagebutton>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <%--jQuery_progressbar--%>
            <div id="progressbar"><div class="progress-label">Loading...</div></div>
        </asp:View>
    </asp:MultiView>

</asp:Content>

