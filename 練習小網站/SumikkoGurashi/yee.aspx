<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title></title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link href="拼圖CSS.css" rel="stylesheet" />
<script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js">
</script>
<%-- Toggle --%>
<script>
$(document).ready(function(){
	$("#btn1").click(function(){
		$("#div1").fadeToggle();
		$("#div2").fadeToggle("slow");
		$("#div3").fadeToggle(1000);
	});
});
</script>
 <%-- Effect消失又飄出來 --%>
 <script src="/jquery/jquery-1.11.1.min.js"></script>
<script>
$(document).ready(function()
  {
  $("#btn3").click(function(){
    $("#p1").css("color","brown")
      .slideDown(2000)
      .slideUp(6000);
  });
});
</script>
<%--拼圖遊戲--%>
<script>
  window.console = window.console || function(t) {};
</script>
<script>
  if (document.location.search.match(/type=embed/gi)) {
    window.parent.postMessage("resize", "*");
  }
</script>
</head>
<body style="background-image:url(../圖/bg.jpg); background-repeat: repeat; background-attachment: fixed;">
    <%-- Effect消失又飄出來 --%>
<p id="p1" style="display:none;background-color:lavender">將hahaha裡的圖片復原到看你奪厲害裡 放錯的話會出現紅色框框ㄛ!!</p>
<button id="btn3" style="background-color:antiquewhite" >遊戲規則</button>
    <%-- Toggle --%>
<button id="btn1"style="background-color:antiquewhite">加油團</button>
<br><br>
<div id="div1" style="width:80px;height:80px; display:none">
    <img src="../圖/加油1.png" />
</div>

<div id="div2" style="width:80px;height:80px; display:none">
    <img src="../圖/加油2.png" />
</div>

<div id="div3" style="width:80px;height:80px; display:none">
    <img src="../圖/加油3.png" />
</div>
    <%--拼圖遊戲--%>
<article class="page">
<article class="main">
<article class="dnd-image-drag cf">
<div class="container">
<h3>HAHAHA</h3>
<div class="inner gallery-list cf">
<img draggable="true" src="../圖/y1.jpg" class="drag" data-value="3" />
<img draggable="true" src="..\圖\y2.jpg" class="drag" data-value="1" />
<img draggable="true" src="..\圖\y3.jpg" class="drag" data-value="2" />
<img draggable="true" src="..\圖\y4.jpg" class="drag" data-value="4" />
</div>
</div>
<div class="container">
<h3>看你奪厲害</h3>
<div class="inner gallery-painting cf">
<div class="drop" data-value="1"></div>
<div class="drop" data-value="2"></div>
<div class="drop" data-value="3"></div>
<div class="drop" data-value="4"></div>
</div>
</div>
<div class="message-container"></div>
<button class="reset-button" style="background-color:antiquewhite">重新</button></article></article></article>
 
   


<%--遊戲部分的--%>
<script src="https://static.codepen.io/assets/common/stopExecutionOnTimeout-157cd5b220a5c80d4ff8e0e70ac069bffd87a61252088146915e8726e5d9f147.js"></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script id="rendered-js">
jQuery(document).ready(function ($) {

  var drag_items = $('.dnd-image-drag .drag');
  var drop_items = $('.dnd-image-drag').find('.drop');

  //set up drag and drop event listeners
  function setUpEventListeners() {

    drag_items.each(function () {
      var thisDrag = $(this);
      thisDrag[0].addEventListener('dragstart', dragStart);
      thisDrag[0].addEventListener('drag', drag);
      thisDrag[0].addEventListener('dragend', dragEnd);
    });

    drop_items.each(function () {
      var thisDrop = $(this);

      thisDrop[0].addEventListener('dragenter', dragEnter);
      thisDrop[0].addEventListener('dragover', dragOver);
      thisDrop[0].addEventListener('dragleave', dragLeave);
      thisDrop[0].addEventListener('drop', drop);

    });

  }
  setUpEventListeners();

  var dragItem;

  //called as soon as the draggable starts being dragged
  //used to set up data and options
  function dragStart(event) {

    drag = event.target;
    dragItem = event.target;

    //set the effectAllowed for the drag item
    event.dataTransfer.effectAllowed = 'copy';

    var imageSrc = $(dragItem).prop('src');
    var imageHTML = $(dragItem).prop('outerHTML');

    //check for IE (it supports only 'text' or 'URL')
    try {
      event.dataTransfer.setData('text/uri-list', imageSrc);
      event.dataTransfer.setData('text/html', imageHTML);
    } catch (e) {
      event.dataTransfer.setData('text', imageSrc);
    }

    $(drag).addClass('drag-active');

  }

  //called as the draggable enters a droppable 
  //needs to return false to make droppable area valid
  function dragEnter(event) {

    var drop = this;

    //set the drop effect for this zone
    event.dataTransfer.dropEffect = 'copy';
    $(drop).addClass('drop-active');

    event.preventDefault();
    event.stopPropagation();

  }

  //called continually while the draggable is over a droppable 
  //needs to return false to make droppable area valid
  function dragOver(event) {
    var drop = this;

    //set the drop effect for this zone
    event.dataTransfer.dropEffect = 'copy';
    $(drop).addClass('drop-active');

    event.preventDefault();
    event.stopPropagation();
  }

  //called when the draggable was inside a droppable but then left
  function dragLeave(event) {
    var drop = this;
    $(drop).removeClass('drop-active');
  }

  //called continually as the draggable is dragged
  function drag(event) {

  }

  //called when the draggable has been released (either on droppable or not)
  //may be called on invalid or valid drop
  function dragEnd(event) {

    var drag = this;
    $(drag).removeClass('drag-active');

  }

  //called when draggable is dropped on droppable 
  //final process, used to copy data or update UI on successful drop
  function drop(event) {

    drop = this;
    $(drop).removeClass('drop-active');

    var dataList, dataHTML, dataText;

    //collect our data (based on what browser support we have)
    try {
      dataList = event.dataTransfer.getData('text/uri-list');
      dataHTML = event.dataTransfer.getData('text/html');
    } catch (e) {;
      dataText = event.dataTransfer.getData('text');
    }

    //we have access to the HTML
    if (dataHTML) {
      $(drop).empty();
      $(drop).prepend(dataHTML);
      var drag = $(drop).find('.drag');
    }
    //only have access to text (old browsers + IE)
    else {
        $(drop).empty();
        $(drop).prepend($(dragItem).clone());
        var drag = $(drop).find('.drag');
      }

    //check if this element is in the right spot
    checkCorrectDrop(drop, drag);
    //see if the final image is complete
    checkCorrectFinalImage();

    event.preventDefault();
    event.stopPropagation();
  }

  //check to see if this dropped item is in the correct spot
  function checkCorrectDrop(drop, drag) {

    //check if this drop is correct
    var imageValue = $(drag).attr('data-value');
    var dropValue = $(drop).attr('data-value');

    if (imageValue == dropValue) {
      $(drop).removeClass('incorrect').addClass('correct');
      //make the dropped item no longer draggable (removing the attr)
      $(drag).attr('draggable', 'false');

      //hide the original drag item (set during dragStart), we don't need it anymore
      $(dragItem).hide();

    } else {
      $(drop).removeClass('correct').addClass('incorrect');
    }

  }

  //checks to see if the dropped images are in the correct locations
  function checkCorrectFinalImage() {

    var correctItems = drop_items.filter('.correct');
    if (correctItems.length == drop_items.length) {
      $('.message-container').empty();
      $('.message-container').append('<h3>棒棒你成功了!</h3>');
      $('.message-container').append('<p>要不要再一次丫</p>');
    } else {
      $('.message-container').empty();
    }
  }

  //Reset the drop containers
  $('.reset-button').on('click', function () {
    $('.dnd-image-drag').find('.drop').children('img').remove();
    $('.dnd-image-drag').find('.drop').removeClass('correct incorrect');
    $('.message-container').empty();
    $('.dnd-image-drag .drag').show();
  });

  // check for ie
  var userAgent = window.navigator.userAgent;
  if (userAgent.indexOf('MSIE') != -1) {
    $('.ie-message').show();
  }

});
</script>
    
 
</body>
</html>
