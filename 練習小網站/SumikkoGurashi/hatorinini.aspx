<%@ Page Language="C#" AutoEventWireup="true" CodeFile="hatorinini.aspx.cs" Inherits="SumikkoGurashi_hatorinini" %>

<!DOCTYPE html>

<%--Checkboxradio(Product Selector)--%>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>jQuery UI Checkboxradio - Product Selector</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    function handleShape( e ) {
      $( ".shape" )
        .removeClass( "circle pill square rectangle" )
        .addClass( $( e.target ).val() );
    };
    function handleToggle( e ) {
      var target = $( e.target );
 
      if ( target.is( ".brand-toggle" ) ) {
        var checked = target.is( ":checked" ),
          value = $( "[name='brand']" )
            .filter( ":checked" )
            .attr( "data-" + target[ 0 ].id )
        $( ".shape" ).css( target[ 0 ].id, checked ? value : "" );
      } else {
        $( ".shape" ).toggleClass( target[ 0 ].id, target.is( ":checked") );
      }
    }
    function updateBrand() {
      handleShape( { target: $( "[name='shape']:checked" ) } );
      $( ".toggle:checked" ).each( function() {
        handleToggle( { target: $( this ) } );
      } );
    }
 
    // Initalize widgets
    $( "input" ).checkboxradio();
    $( ".shape-bar, .brand" ).controlgroup();
    $( ".toggles" ).controlgroup( {
      direction: "vertical"
    } );
 
    // Bind event handlers
    $( "[name='shape']").on( "change", handleShape );
    $( ".toggle" ).on( "change", handleToggle );
    $( "[name='brand']").on( "change", updateBrand );
 
    // Set initial values
    updateBrand();
  } );
  </script>
  <style>
    .shape {
      margin-left: 4em;
      margin-top: 2.5em;
      height: 8em;
      width: 8em;
      box-shadow: 4px 4px 8px;
      background-repeat: no-repeat;
      background-size: 90%;
      background-position: 50%; 
      color:aliceblue;
    }
    .circle, .pill {
      border-radius: 8em;
    }
    .pill, .rectangle {
      width: 11.5em;
    }
    .square, .circle {
      margin-left: 9em;
    }
    .border {
      border: 2px solid #7E634D;
    }
    .toggles {
      width: 200px;
    }
    .toggle-wrap, .shape {
      display: inline-block;
      vertical-align: top;
    }
    .controls {      
      padding: 1em;
      display: inline-block;
      font: 16px "微軟正黑體";
      color: #7E634D;
    }
  </style>
</head>
<body style="background-image:url(../圖/bg.jpg); background-repeat: repeat; background-attachment: fixed;">

<div class="controls">
  <div class="brand-wrap">
    <h3>1.選擇喜歡的角色</h3>
    <div class="brand">
      <label for="brand-jquery">白熊</label>
      <input type="radio" name="brand" id="brand-jquery" data-background-color="#FFB8B1" data-color="#7E634D" data-background-image="url(../圖/1.png)" checked>
      <label for="brand-jquery-ui">企鵝</label>
      <input type="radio" name="brand" id="brand-jquery-ui" data-background-color="#DCF5B4" data-color="#7E634D" data-background-image="url(../圖/2.png)">
      <label for="brand-jquery-mobile">炸豬排</label>
      <input type="radio" name="brand" id="brand-jquery-mobile" data-background-color="#FFCA83" data-color="#7E634D" data-background-image="url(../圖/3.png)">
      <label for="brand-sizzle">貓咪</label>
      <input type="radio" name="brand" id="brand-sizzle" data-background-color="#FFF090" data-color="#7E634D" data-background-image="url(../圖/4.png)">
      <label for="brand-qunit">蜥蜴</label>
      <input type="radio" name="brand" id="brand-qunit" data-background-color="#9EE2F5" data-color="#7E634D" data-background-image="url(../圖/5.png)">
    </div>
  </div>
  <div class="shape-wrap">
    <h3>2.選擇的圖標形狀</h3>
    <div class="shape-bar">
      <label for="shape-circle">圓形</label>
      <input type="radio" name="shape" id="shape-circle" value="circle" checked>
      <label for="shape-square">方形</label>
      <input type="radio" name="shape" id="shape-square" value="square">
      <label for="shape-pill">橢圓</label>
      <input type="radio" name="shape" id="shape-pill" value="pill">
      <label for="shape-rectangle">長方</label>
      <input type="radio" name="shape" id="shape-rectangle" value="rectangle">
    </div>
  </div>
  <div class="toggle-wrap">
    <h3>3.選擇其他特效</h3>
    <div class="toggles">
      <label for="color">陰影</label>
      <input class="toggle brand-toggle" type="checkbox" name="color" id="color">
      <label for="border">邊框</label>
      <input class="toggle" type="checkbox" name="border" id="border">
      <label for="background-color">背景色</label>
      <input class="toggle brand-toggle" type="checkbox" name="background-color" id="background-color" checked>
      <label for="background-image">角色圖</label>
      <input class="toggle brand-toggle" type="checkbox" name="background-image" id="background-image" checked>
    </div>
  </div>
  <div class="shape circle background jquery-ui"></div>
</div>

    <style>
  .toggler { width: 200px; height: 200px; }
  #button { padding: .5em 1em; text-decoration: none;font: 16px "微軟正黑體"; color:#7E634D;}
  #effect { width: 200px; height: 90px; padding: 0.4em; position: center; background-color:#FEF1E7 ;font: 16px "微軟正黑體";color:#7E634D;}
  #effect h3 { margin: 0; padding: 0.4em; text-align: center; }
  </style>
  <script>
  $( function() {
    // run the currently selected effect
    function runEffect() {
      // get effect type from
      var selectedEffect = $( "#effectTypes" ).val();
 
      // Most effect types need no options passed by default
      var options = {};
      // some effects have required parameters
      if ( selectedEffect === "scale" ) {
        options = { percent: 50 };
      } else if ( selectedEffect === "size" ) {
        options = { to: { width: 280, height: 185 } };
      }
 
      // Run the effect
      $( "#effect" ).show( selectedEffect, options, 500, callback );
    };
 
    //callback function to bring a hidden box back
    function callback() {
      setTimeout(function() {
        $( "#effect:visible" ).removeAttr( "style" ).fadeOut();
      }, 1500 );
    };
 
    // Set effect from select menu value
    $( "#button" ).on( "click", function() {
      runEffect();
    });
 
    $( "#effect" ).hide();
  } );
  </script>
    <select name="effects" id="effectTypes" hidden="hidden">
     <option value="blind">Blind</option>
    </select>
    <br />
    <button id="button" class="ui-state-default ui-corner-all" style="background-color:#FDDDDD">點我點我</button>
        <br /><br />
  <div class="toggler">
    <div id="effect" class="ui-widget-content ui-corner-all" >
      <p>
        滿意你的圖標嗎(๑• . •๑)<br />可以到首頁給我們五星好評<br />我們永遠感謝你( ´(00)`)
      </p>
    </div>
  </div> 
 </body>
</html>