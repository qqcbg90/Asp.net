<%@ Page Language="C#" AutoEventWireup="true" CodeFile="moreImage.aspx.cs" Inherits="SumikkoGurashi_moreImage" %>

<!doctype html>
<html lang="en">
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Sumikko Gurashi | 更多圖片</title>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
    <style>
    body {
      margin: 0;
    }
    #container {
      overflow: hidden;
      position: relative;
      height: 540px;
    }
 
    img {
      position: absolute;
    }
    </style>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    function left( element, using ) {
      element.position({
        my: "right middle",
        at: "left+25 middle",
        of: "#container",
        collision: "none",
        using: using
      });
    }
    function right( element, using ) {
      element.position({
        my: "left middle",
        at: "right-25 middle",
        of: "#container",
        collision: "none",
        using: using
      });
    }
    function center( element, using ) {
      element.position({
        my: "center middle",
        at: "center middle",
        of: "#container",
        using: using
      });
    }
 
    left( $( "img:eq(0)" ) );
    center( $( "img:eq(1)" ) );
    right( $( "img:eq(2)" ) );
 
    function animate( to ) {
      $( this ).stop( true, false ).animate( to );
    }
    function next( event ) {
      event.preventDefault();
      center( $( "img:eq(2)" ), animate );
      left( $( "img:eq(1)" ), animate );
      right( $( "img:eq(0)" ).appendTo( "#container" ) );
    }
    function previous( event ) {
      event.preventDefault();
      center( $( "img:eq(0)" ), animate );
      right( $( "img:eq(1)" ), animate );
      left( $( "img:eq(2)" ).prependTo( "#container" ) );
    }
    $( "#previous" ).on( "click", previous );
    $( "#next" ).on( "click", next );
 
    $( "img" ).on( "click", function( event ) {
      $( "img" ).index( this ) === 0 ? previous( event ) : next( event );
    });
 
    $( window ).on( "resize", function() {
      left( $( "img:eq(0)" ), animate );
      center( $( "img:eq(1)" ), animate );
      right( $( "img:eq(2)" ), animate );
    });
  } );
  </script>

</head>

<body style="background-image:url(../圖/bg.jpg); background-repeat: repeat; background-attachment: fixed;">

<div> 
  <a id="previous" href="#">Previous</a>
  <a id="next" href="#">Next</a>
  <br /><br />
</div>

<div id="container"> 
  <img src="../圖/44_1080_1920.png" width="960" height="540" >
  <img src="../圖/45_1080_1920.png" width="960" height="540" >
  <img src="../圖/48_1080_1920.png" width="960" height="540" > 
</div>

</body>
</html>