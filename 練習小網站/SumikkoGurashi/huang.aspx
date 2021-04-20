<%@ Page Language="C#" AutoEventWireup="true" CodeFile="huang.aspx.cs" Inherits="SumikkoGurashi_huang" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">    
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Sumikko Gurashi | 訂書</title>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
   
    <%--spinner--%>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="/resources/demos/external/jquery-mousewheel/jquery.mousewheel.js"></script>
  
    <style>
        body { background-image: url('http://localhost:49502/圖/bg.jpg') }       
    </style>

    <%--spinner的設定--%>
  <script>
  $( function() {
      var spinner = $("#spinner").spinner({
          spin: function( event, ui ) {
        if ( ui.value > 10 ) {
          $( this ).spinner( "value", 0 );
          return false;
        } else if ( ui.value < 0 ) {
          $( this ).spinner( "value", 10 );
          return false;
        }
      }
      });
 
    $( "#disable" ).on( "click", function() {
      if ( spinner.spinner( "option", "disabled" ) ) {
        spinner.spinner( "enable" );
      } else {
        spinner.spinner( "disable" );
      }
    });

      $("#getvalue").on("click", function () {
          alert("總共預購 " + spinner.spinner("value")+"本");
    });
    $( "#setvalue" ).on( "click", function() {
      spinner.spinner( "value", 7 );
    });
 
    $( "button" ).button();
  } );
  </script>
 <style type ="text/css">
        .bang { 
            position:absolute;
            top:25px;
            left:25px;
        }
          .bang2 { 
            position:absolute;
            top:75px;
            left:25px;
        }
     .color {
          position:absolute;
            top:250px;
            left:25px;
     }
     .color2 {
            position:absolute;
            width:500px;
            height:500px;
            top:150px;
            left:25px;
     }
</style>  

<%--顏色選擇--%>
  <style>
  #red, #green, #blue {
    float: left;
    clear: left;
    width: 300px;
    margin: 15px;
  }
  #swatch {
    width: 120px;
    height: 100px;
    margin-top: 18px;
    margin-left: 350px;
    background-image: none;
  }
  #red .ui-slider-range { background: #ef2929; }
  #red .ui-slider-handle { border-color: #ef2929; }
  #green .ui-slider-range { background: #8ae234; }
  #green .ui-slider-handle { border-color: #8ae234; }
  #blue .ui-slider-range { background: #729fcf; }
  #blue .ui-slider-handle { border-color: #729fcf; }
      .auto-style2 {
          position: absolute;
          top: 150px;
          left: 58px;
          width: 483px;
      }
  </style>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    function hexFromRGB(r, g, b) {
      var hex = [
        r.toString( 16 ),
        g.toString( 16 ),
        b.toString( 16 )
      ];
      $.each( hex, function( nr, val ) {
        if ( val.length === 1 ) {
          hex[ nr ] = "0" + val;
        }
      });
      return hex.join( "" ).toUpperCase();
    }
    function refreshSwatch() {
      var red = $( "#red" ).slider( "value" ),
        green = $( "#green" ).slider( "value" ),
        blue = $( "#blue" ).slider( "value" ),
        hex = hexFromRGB( red, green, blue );
      $( "#swatch" ).css( "color", "#" + hex );
    }
 
    $( "#red, #green, #blue" ).slider({
      orientation: "horizontal",
      range: "min",
      max: 255,
      value: 127,
      slide: refreshSwatch,
      change: refreshSwatch
    });
    $( "#red" ).slider( "value", 255 );
    $( "#green" ).slider( "value", 140 );
    $( "#blue" ).slider( "value", 60 );
  } );
  </script>

</head>
<body>

     <p class="bang">
                    <label for="spinner">新書預購:(最多10本)</label>
                   <%--<asp:TextBox ID="spinner" runat="server" name="value"></asp:TextBox>--%>
                    <input id="spinner" name="value">
              </p>
 
              <p class="bang2">
                    <button id="disable">鎖起來</button>
                    <button id="getvalue">確定</button>
                    <button id="setvalue">設定預設數目</button>
             </p>

    <%--顏色選擇--%>
    <form id="form1" runat="server" class="color">
        <div id="red"></div>
        <div id="green"></div>
        <div id="blue"></div>
        <div class="color2">
             <br />
             <asp:Label ID="swatch" runat="server" Text="すみっコぐらし" Font-Size="XX-Large" Font-Bold="True" Width="500"></asp:Label>
        </div>
    </form>

</body>
</html>
