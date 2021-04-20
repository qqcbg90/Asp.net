<%@ Page Language="C#" AutoEventWireup="true" CodeFile="green.aspx.cs" Inherits="SumikkoGurashi_green" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>可愛動起乃</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
    <script type="text/javascript" src="http://art.is.com.tw/sites/all/art_mystery/wave/js/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="http://art.is.com.tw/sites/all/art_mystery/wave/js/animateBackground-plugin.js"></script>
    <%--!--%>
    <script type="text/javascript" src="http://art.is.com.tw/sites/all/art_mystery/wave/js/cufon-yui.js"></script>
    <%--!顯示波浪--%>

    <style type="text/css">
        .color {
            color: cornflowerblue
        }
    </style>

    <script>
        //
        $(document).ready(function () {
            $("button").click(function () {
                $("#div1").hide();
                //$("#div2").fadeToggle("slow");
                $("#div2").removeClass("slide", 1000);//●"hide->removeClass 把hide關起來了~~~
                $("#div3").fadeToggle(3000);
                //$("#div4").removeClass("clip", 1000);//●removeClass關閉
                $('h3').addClass("color");//+class function(n) return n失敗~~
            });
        });
        function runEffect() {
            // Run the effect
            $("#effect").hide(selectedEffect, options, 1000, callback());
        };

        // Callback function to bring a hidden box 這樣就不會再呼叫~剩一張小紫
        function callback() {
            setTimeout(function () {
                $("#div2").removeAttr("style").hide().fadeIn();
            }, 1000);
        };
    </script>

    <style>
        .test {
            z-index: 1;
            position: relative;
            top: 0px;
            left: 0px;
            height: 500px;
            width: 100%;
        }

        div.wave1 {
            width: 100%;
            height: 100%;
            position: absolute;
            top: 500px; /*!波浪一*/
            left: 0px;
            background: url(http://art.is.com.tw/sites/all/art_mystery/wave/wave.png) 0px -120px repeat;
            opacity: 0;
        }

        div.wave2 {
            width: 100%;
            height: 100%;
            position: absolute;
            top: 500px;
            left: 0px;
            opacity: 0;
            background: url(http://art.is.com.tw/sites/all/art_mystery/wave/wave.png) 200px -130px repeat;
        }

        .auto-style1 {
            z-index: 1;
            position: relative;
            top: 0px;
            left: 0px;
            height: 268px;
            width: 100%;
        }

        </style>

    <div id="all">
        <div class="auto-style1">
            <div class="wave1"></div>
            <div class="wave2"></div>

            <script>
                function Wave() {

                    $(".test").ready(function animationEnter(evt) {
                        var wave1 = $(this).find("div.wave1");
                        var wave2 = $(this).find("div.wave2");
                        /*--如果DIV的名稱改了，記得這裡也要改，不然他會找不到物件，這裡在宣告當看到wave1、wave2的名稱，他就會去找div有叫wave1、wave2的--*/



                        /*------注意!! 這裡已經升成兩個背景了↓------*/
                        //wave animation 1
                        //easeInOutQuad
                        function animation1() {
                            wave1.animate({ backgroundPosition: "-1500px -120px" }, {
                                duration: 3000, easing: "easeInOutQuad", complete: function () {
                                    wave1.animate({ backgroundPosition: "0px -120px" }, { duration: 3000, easing: "easeInOutQuad", complete: function () { animation1(); } });
                                }
                            });
                        }
                        //wave animation 2
                        //easeOutSine
                        function animation2() {
                            wave2.animate({ backgroundPosition: "-1500px -130px" }, {
                                duration: 5000, easing: "easeOutSine", complete: function () {
                                    wave2.animate({ backgroundPosition: "-200px -130px" }, { duration: 5000, easing: "easeOutSine", complete: function () { animation2(); } });
                                }
                            });
                        }
                        /*-----!! 這裡已經升成兩個背景了↑-----*/
                        //easeInOutExpo 
                        wave1.animate({ opacity: 0.2 }, { queue: false, duration: 400, easing: "easeInOutExpo" });
                        animation1();/*可調整背景透明度*/
                        wave2.animate({ opacity: 0.1 }, { queue: false, duration: 400, easing: "easeInOutExpo" });
                        animation2();/*可調整背景透明度*/
                    });
                    //easeInBounce
                    $(".test").ready(function animationLeave(evt) {/*easeInBounce*/
                        var wave1 = $(this).find("div.wave1");
                        var wave2 = $(this).find("div.wave2");
                        $(this).stop().animate({ "top": "0px", "left": "0px" }, "fast");
                        wave1.stop(true).animate({ opacity: 0 }, { duration: 300, easing: "easeInBounce", complete: function () { wave1.css("backgroundPosition", "0px -120px"); } });
                        wave2.stop(true).animate({ opacity: 0 }, { duration: 300, easing: "easeInBounce", complete: function () { wave2.css("backgroundPosition", "-600px -150px"); } });
                    });
                }
                $(document).ready(function () {
                    Cufon.replace('.navitem').CSS.ready(function () {
                        Wave();
                        $('#nav').onePageNav({
                            filter: ':not(.external)',
                            scrollThreshold: 0.3
                        });
                    });
                });
            </script>

</head>
<body style="background-image: url(../圖/bg.jpg); background-repeat: repeat; background-attachment: fixed;">
    <br />
    <button id="button" class="ui-state-default ui-corner-all" style="font-size: large">嗨</button>
    <form id="form1" runat="server" style="text-align: center">
        <h3 class="ui-widget-header ui-corner-all" style="width: 300px; height: 50px">ログインスペース  ₍₍ ◝(●⁰⊖⁰●)◜ ₎₎</h3>
        <div id="div1" style="width: 240px; height: 135px; background-color: antiquewhite;">
            <img class="ui-widget-header ui-corner-all" src="../圖/H01.png" />
        </div>
        <br />
        <div id="div2" style="width: 240px; height: 135px; background-color: lavenderblush;">
            <img class="ui-widget-header ui-corner-all" src="../圖/H02_2.png" />
        </div>
        <br />
        <div id="div3" style="width: 240px; height: 135px; background-color: lavender;">
            <img class="ui-widget-header ui-corner-all" src="../圖/H03.png" />
        </div>
       <%-- <br />
        <div id="div4" style="width: 240px; height: 135px; background-color: cadetblue;">
            <img class="ui-widget-header ui-corner-all" src="../圖/H03.png" style="height: 85%; width: 100%;" />
        </div>--%>
    </form>

</body>

</html>
