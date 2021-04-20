<%@ Page Title="Sumikko Gurashi | 角落活動" Language="C#" MasterPageFile="~/SumikkoGurashi/MasterPage.master" AutoEventWireup="true" CodeFile="Activity.aspx.cs" Inherits="SumikkoGurashi_Activity" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

    <%--jQuery_dialog--%>
    <%--jQuery_selectmenu--%>    
    <script>
    $( function() {
      $( "#dialog" ).dialog({
        autoOpen: false,
        show: {
          effect: "blind",
          duration: 1000
        },
        hide: {
          effect: "explode",
          duration: 1000
        }
      });
 
      $( "#opener" ).on( "click", function() {
        $( "#dialog" ).dialog( "open" );
      });
    });

    $(function () {
      var circle = $("#circle");
        $("#radius").selectmenu({
          change: function (event, data) {
            circle.css({
              //width: data.item.value,
              //height: data.item.value,
              "font-size": data.item.value,
            });
          }
        });
        $("#color").selectmenu({
          change: function (event, data) {
            circle.css(
              "color", data.item.value
            );
          }
        });
        $("#text").selectmenu({
          change: function (event, data) {
            circle.text(
              data.item.value
            );
          }
        });
    });
    </script>

  <%--jQuery_sortable--%>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <style>
  #sortable { list-style-type: none; margin: 0; padding: 0; width: 500px; }
  #sortable li { margin: 1px 1px 0; padding: 1px; float: left; width: 150px; height: 150px; font-size: 4em; text-align: center; }
  </style>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#sortable" ).sortable();
    $( "#sortable" ).disableSelection();
  } );
  </script>

    <%--FB留言板設定--%>
    <div id="fb-root"></div>
    <script async defer crossorigin="anonymous" src="https://connect.facebook.net/zh_TW/sdk.js#xfbml=1&version=v6.0&appId=930298957423233"></script>
    
    <%--版面設定--%>
    <style type ="text/css">
        .a {
            width: 1006px;
            margin-left: auto;
            margin-right: auto;
            text-align: center;
        }
        .b {
            width: 800px;
            margin-left: auto;
            margin-right: auto;
            text-align: center;
        }
        .c {
            width: 500px;
            margin-left: auto;
            margin-right: auto;
            text-align: center;        
        }
        .d {
            width: 1006px;
            margin-left: auto;
            margin-right: auto;
            text-align: left;        
        }
        .bar {
            width: 450px;
            margin-left: auto;
            margin-right: auto;
            text-align: center;
        }
        .tb {
            width: 800px;
            margin-left: auto;
            margin-right: auto;
            text-align: center;
            border-collapse: unset;
            font: 20px "微軟正黑體";
            color: #7E634D;
        }
        .td1 {
            border: 3px Double #FFB8B1;
        }
        .td2 {
            border: 3px Double #DCF5B4;
        }
        .td3 {
            border: 3px Double #FFCA83;
        }
        .td4 {
            border: 3px Double #FFF090;
        }
        .td5 {
            border: 3px Double #9EE2F5;
        }
        .bg:hover {
            background: url('../圖/topbg0.png');
        }
        .td6 {
            border: 3px Double #7E634D;
        }

        /*jQuery_selectmenu*/
        fieldset {
            border: 0;
            margin-left: 0px;
        }
        .demo{
            margin-left: auto;
            margin-right: auto;
            text-align: center;
        }
        label {
            display: block;
            margin: 20px 0 0 0;
        }
        #circle {
            /*float: left;
            background: yellow;
            border-radius: 50%;*/
            width: 150px;
            /*height: 150px;*/
            font-size:12px;
            color:black;
            margin-left: auto;
            margin-right: auto;
            text-align: center;
        }
        .auto-style1 {
            width: 500px;
        }
    </style>

    <asp:MultiView ID="MultiView1" runat="server" OnPreRender="MultiView1_PreRender">
        <%--1.投票活動--%>
        <asp:View ID="View1" runat="server">            
            <table class="tb" aria-hidden="False" >
                <tr>
                    <th colspan="5" class="bg">
                        <b><img src="../圖/b3.png" /></b>
                    </th>
                </tr>
                <tr>
                    <th colspan="5" class="bg">
                        <%--<asp:Label ID="Label7" runat="server" Font-Size="X-Large" Font-Names="微軟正黑體">
                            ✿活動規則✿<br />
                            每人每天可以投一票、送出選擇後無法更改<br />
                        </asp:Label>--%>
                        <%--jQuery_dialog--%>
                        <div id="dialog" title="✿活動規則✿">
                            每人每天可以投一票<br />送出選擇後無法更改
                        </div>
                        <input id="opener" type="button" value="活動規則" />
                    </th>
                </tr>
                <tr>
                    <th colspan="5" class="td6 bg">
                        <%--<b><img src="../圖/b2.png" /></b>--%>
                        <div id="up_container" >
                            <asp:UpdatePanel ID="update" runat="server">
                            <ContentTemplate>
                                <b> 
                                     <img src="../圖/b2.png"">
                                </b>
                                <br /><b><asp:ImageButton ID="UpdateButton" runat="server" ImageUrl="~/圖/btnHigh.png" OnClick="UpdateButton_Click1" />
                                </b>
                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="UpdateButton" EventName="Click" />
                            </Triggers>
                            </asp:UpdatePanel>
                        </div>
                        <%--ajax_UpdatePanelAnimationExtender--%>
                        <ajaxToolkit:UpdatePanelAnimationExtender ID="upae" BehaviorID="animation" runat="server" TargetControlID="update">
                            <Animations>
                            <OnUpdating><Sequence>                        
                            <Parallel duration="0">
                                <EnableAction AnimationTarget="UpdateButton" Enabled="false" />                            
                            </Parallel>
                            <StyleAction Attribute="overflow" Value="hidden" />
                            <Parallel duration=".25" Fps="30">
                            <Condition ConditionScript="true">
                                <FadeOut AnimationTarget="up_container" minimumOpacity=".2" />
                            </Condition>                            
                            <Condition ConditionScript="true">
                                <Color AnimationTarget="up_container" PropertyKey="backgroundColor"
                                 EndValue="#feff03" StartValue="#FFFFFF" />
                                <%--<FadeIn AnimationTarget="UpdateButton" />--%>
                            </Condition>
                            </Parallel>
                            </Sequence></OnUpdating>

                            <OnUpdated><Sequence>                        
                            <Parallel duration=".25" Fps="30">
                            <Condition ConditionScript="true">
                                <FadeIn AnimationTarget="up_container" minimumOpacity=".2" />
                            </Condition>                           
                            <Condition ConditionScript="true">
                                <Color AnimationTarget="up_container" PropertyKey="backgroundColor"
                                 StartValue="#feff03"  EndValue="#FFFFFF"/>
                                <%--<FadeIn AnimationTarget="UpdateButton" />--%>
                            </Condition>
                            </Parallel>                                                
                            <Parallel duration="0">                            
                                <EnableAction AnimationTarget="UpdateButton" Enabled="true" />
                            </Parallel>                         
                            </Sequence></OnUpdated>
                            </Animations>
                        </ajaxToolkit:UpdatePanelAnimationExtender>
                    </th>
                </tr>
                <tr>
                    <td class="td1">
                        <asp:RadioButton ID="RadioButton1" runat="server" Font-Size="XX-Large" Text="白熊" GroupName="aa" />
                        <br /><asp:Label ID="Label1" runat="server" Text="目前票數："></asp:Label>
                    </td>
                    <td class="td2">
                        <asp:RadioButton ID="RadioButton2" runat="server" Font-Size="XX-Large" Text="企鵝" GroupName="aa" />
                        <br /><asp:Label ID="Label2" runat="server" Text="目前票數："></asp:Label>
                    </td>
                    <td class="td3">
                        <asp:RadioButton ID="RadioButton3" runat="server" Font-Size="XX-Large" Text="貓咪" GroupName="aa" />
                        <br /><asp:Label ID="Label3" runat="server" Text="目前票數："></asp:Label>
                    </td>
                    <td class="td4">
                        <asp:RadioButton ID="RadioButton4" runat="server" Font-Size="XX-Large" Text="豬排" GroupName="aa" />
                        <br /><asp:Label ID="Label4" runat="server" Text="目前票數："></asp:Label>
                    </td>
                    <td class="td5">
                        <asp:RadioButton ID="RadioButton5" runat="server" Font-Size="XX-Large" Text="蜥蜴" GroupName="aa" />
                        <br /><asp:Label ID="Label5" runat="server" Text="目前票數："></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th colspan="5">
                        <b>
                            <asp:Label ID="Label6" runat="server" Font-Names="微軟正黑體" ForeColor="#990000" Font-Bold="True"></asp:Label>
                            <br />
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/圖/btn10.png" OnClick="ImageButton1_Click" />
                        </b>     
                        <%--ajax_ConfirmButtonExtender--%>
                        <ajaxToolkit:ConfirmButtonExtender ID="ConfirmButtonExtender1" runat="server" ConfirmText="確定要投他?" TargetControlID="ImageButton1" />
                    </th>
                </tr>
            </table>       
            <br />
            <%--ajax_圖表--%>
            <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0" Height="300px" Width="500px" CssClass="bar" >
                <ajaxToolkit:TabPanel ID="TabPanel1" runat="server" HeaderText="TabPanel1">
                    <HeaderTemplate>BarChart</HeaderTemplate>
                    <ContentTemplate>
                        <ajaxToolkit:BarChart ID="BarChart1" runat="server" CategoriesAxis="白熊,企鵝,貓咪,豬排,蜥蜴" ChartTitleColor="#7E634D" CategoryAxisLineColor="#A88970" BaseLineColor="#7E634D" ChartHeight="300" ChartWidth="400" BorderStyle="None" CssClass="bar">  </ajaxToolkit:BarChart>
                    </ContentTemplate>
                </ajaxToolkit:TabPanel>
                <ajaxToolkit:TabPanel ID="TabPanel2" runat="server" HeaderText="TabPanel2">
                    <HeaderTemplate>PieChart</HeaderTemplate>
                    <ContentTemplate>
                       <ajaxToolkit:PieChart ID="PieChart1" runat="server" ChartHeight="300" ChartWidth="400" BorderStyle="None" CssClass="bar"></ajaxToolkit:PieChart>
                    </ContentTemplate>                         
                </ajaxToolkit:TabPanel>
                <ajaxToolkit:TabPanel ID="TabPanel3" runat="server" HeaderText="TabPanel3">
                    <HeaderTemplate>LineChart</HeaderTemplate>
                    <ContentTemplate>
                        <ajaxToolkit:LineChart ID="LineChart1" runat="server" ChartHeight="300" ChartWidth="400" BorderStyle="None" CssClass="bar" CategoriesAxis="白熊,企鵝,貓咪,豬排,蜥蜴" ></ajaxToolkit:LineChart>
                    </ContentTemplate>
                </ajaxToolkit:TabPanel>
                <ajaxToolkit:TabPanel ID="TabPanel4" runat="server" HeaderText="TabPanel4">
                    <HeaderTemplate>AreaChart</HeaderTemplate>
                    <ContentTemplate>
                        <ajaxToolkit:AreaChart ID="AreaChart1" runat="server" ChartHeight="300" ChartWidth="400" BorderStyle="None" CssClass="bar" CategoriesAxis="白熊,企鵝,貓咪,豬排,蜥蜴"></ajaxToolkit:AreaChart>
                    </ContentTemplate>
                </ajaxToolkit:TabPanel>
                <ajaxToolkit:TabPanel ID="TabPanel5" runat="server" HeaderText="TabPanel5">
                    <HeaderTemplate>BubbleChart</HeaderTemplate>
                    <ContentTemplate>
                        <ajaxToolkit:BubbleChart ID="BubbleChart1" runat="server" ChartHeight="300" ChartWidth="400" BorderStyle="None" CssClass="bar" ></ajaxToolkit:BubbleChart>
                    </ContentTemplate>
                </ajaxToolkit:TabPanel>
            </ajaxToolkit:TabContainer>
            <%--ajax_BarChart--%>
            <%--<ajaxToolkit:BarChart ID="BarChart1" runat="server" CategoriesAxis="白熊,企鵝,貓咪,豬排,蜥蜴" ChartTitleColor="#7E634D" CategoryAxisLineColor="#A88970" BaseLineColor="#7E634D" ChartHeight="300" ChartWidth="400" BorderStyle="None" CssClass="bar"> 
            </ajaxToolkit:BarChart>--%>
            <%--ajax_BalloonPopupExtender--%>
            <%--<asp:Panel ID="Panel1" runat="server" Font-Names="微軟正黑體">角色票數長條圖 </asp:Panel> 
            <ajaxToolkit:BalloonPopupExtender ID="BalloonPopupExtender1" runat="server" BalloonPopupControlID="Panel1" TargetControlID="BarChart1" BalloonStyle="Cloud" DisplayOnClick="False" DisplayOnMouseOver="True" Position="BottomRight">
            </ajaxToolkit:BalloonPopupExtender>
            <br /><br />
            <ajaxToolkit:PieChart ID="PieChart1" runat="server" ChartHeight="300" ChartWidth="400" BorderStyle="None" CssClass="bar"></ajaxToolkit:PieChart>--%>
            <%--ajax_BalloonPopupExtender--%>
            <%--<asp:Panel ID="Panel2" runat="server" Font-Names="微軟正黑體">角色票數圓餅圖 </asp:Panel> 
            <ajaxToolkit:BalloonPopupExtender ID="BalloonPopupExtender2" runat="server" BalloonPopupControlID="Panel2" TargetControlID="PieChart1" BalloonStyle="Cloud" DisplayOnClick="False" DisplayOnMouseOver="True" Position="BottomRight"></ajaxToolkit:BalloonPopupExtender> 
            <br /><br />--%>
            <%--ajax_LineChart--%>
            <%--<ajaxToolkit:LineChart ID="LineChart1" runat="server" ChartHeight="300" ChartWidth="400" BorderStyle="None" CssClass="bar" CategoriesAxis="白熊,企鵝,貓咪,豬排,蜥蜴" ></ajaxToolkit:LineChart>
            <br />--%>
            <%--ajax_AreaChart--%>
            <%--<br /><br />
            <ajaxToolkit:AreaChart ID="AreaChart1" runat="server" ChartHeight="300" ChartWidth="400" BorderStyle="None" CssClass="bar" CategoriesAxis="白熊,企鵝,貓咪,豬排,蜥蜴"></ajaxToolkit:AreaChart>--%>
            <%--ajax_BubbleChart--%>
            <%--<br /><br />
            <ajaxToolkit:BubbleChart ID="BubbleChart1" runat="server" ChartHeight="300" ChartWidth="400" BorderStyle="None" CssClass="bar" ></ajaxToolkit:BubbleChart>--%>
            <%--FB留言板顯示--%>
            <%--<div class="fb-comments" data-href="https://www.facebook.com/yu.wei.165" data-width="800" data-numposts="10"></div>--%>
            <br />
        </asp:View>
        <%--未登入畫面--%>
        <asp:View ID="View2" runat="server">
            <table class="a" aria-hidden="False" >
                <tr>
                    <td>
                        <img src="../圖/請先登入.png" style="text-align: center" />
                    </td>
                </tr>
            </table>
        </asp:View>
        <%--活動首頁--%>
        <asp:View ID="View3" runat="server">               
            <table class="a" aria-hidden="False" >
                <tr>
                    <td>
            <br /><br /> 
            <img src="../圖/New.gif" width="40" height="18" />            
            <asp:Label ID="Label16" runat="server" Font-Names="微軟正黑體" ForeColor="#7E634D" Font-Overline="False" Font-Size="32px">[故事接龍] 從前從前，有一群可愛的小生物..</asp:Label>
            <br />
            <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/圖/c5.png" OnClick="ImageButton6_Click" />      
            <br /><br /><br />
            <img src="../圖/Line.gif" width="650" />            
            <br /><br /><br />
            <asp:Label ID="Label15" runat="server" Font-Names="微軟正黑體" ForeColor="#7E634D" Font-Overline="False" Font-Size="32px">什麼？居然推出可以讓大家動手做的活動啦！☆</asp:Label>
            <br />
            <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/圖/c4.png" OnClick="ImageButton5_Click" />      
            <br /><br /><br />
            <img src="../圖/Line.gif" width="650" />            
            <br /><br /><br />
            <asp:Label ID="Label14" runat="server" Font-Names="微軟正黑體" ForeColor="#7E634D" Font-Overline="False" Font-Size="32px">根據你的喜好推薦適合你的小夥伴！快來試試看☆</asp:Label>
            <br />
            <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/圖/c3.gif" OnClick="Button2_Click" />      
            <br /><br /><br />
            <img src="../圖/Line.gif" width="650" />            
            <br /><br /><br />
            <asp:Label ID="Label8" runat="server" Font-Names="微軟正黑體" ForeColor="#7E634D" Font-Overline="False" Font-Size="32px">角落選舉活動舉辦中♪ 快來為你最喜歡的角色應援吧！</asp:Label>
            <br />
            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/圖/c1.gif" OnClick="ImageButton2_Click" />      
            <br /><br /><br />
            <img src="../圖/Line.gif" width="650" />
            <br /><br /><br />
            <asp:Label ID="Label9" runat="server" Font-Names="微軟正黑體" ForeColor="#7E634D" Font-Overline="False" Font-Size="32px">誰是你的真命小夥伴呢…？幸運小夥伴測驗開放中♪</asp:Label>
            <br />
            <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/圖/c2.gif" OnClick="ImageButton3_Click" />      
            <br /><br /><br />
            <%--<asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click"  />--%>
            <div class="fb-comments" data-href="https://www.facebook.com/yu.wei.165" data-width="800" data-numposts="10"></div>
                    </td>
                </tr>
            </table>
        </asp:View>
        <%--2.抽籤活動--%>
        <asp:View ID="View4" runat="server">
            <br />
            <table class="a" aria-hidden="False" >
                <tr>
                    <td>
            <asp:AdRotator ID="AdRotator1" runat="server" DataSourceID="XmlDataSource1" width="800" height="600" />
            <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="ex10.xml" ></asp:XmlDataSource>
            <br /><br />
            <%--<div class="fb-comments" data-href="https://www.facebook.com/yu.wei.165" data-width="800" data-numposts="10"></div>--%>
            <br />
                    </td>
                </tr>
            </table>
        </asp:View>

        <%--3.推薦角色--%>
        <asp:View ID="View5" runat="server">
            <table class="a" aria-hidden="False" >
                <tr>
                    <td>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional" RenderMode="Inline">
                <ContentTemplate>
                    <br />
                    <asp:Label ID="Label10" runat="server" Text="個性：" Font-Names="微軟正黑體" Font-Size="Large"></asp:Label>
                    <asp:DropDownList ID="DropDownList1" runat="server" Font-Names="微軟正黑體" Font-Size="Large"></asp:DropDownList>
                    <br /><br />
                    <asp:Label ID="Label11" runat="server" Text="體型：" Font-Names="微軟正黑體" Font-Size="Large"></asp:Label>
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Font-Names="微軟正黑體" Font-Size="Large" ></asp:DropDownList>
                    <br /><br />
                    <asp:Button ID="Button1" runat="server" Text="確定" OnClick="Button1_Click" Font-Names="微軟正黑體" Font-Size="Large" />
                    <%--<asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/圖/btn11.png" OnClick="Button1_Click" />--%>      
                    <br /><br />
                    <asp:Label ID="Label12" runat="server" Text="推薦你：" Font-Names="微軟正黑體" Font-Size="X-Large"></asp:Label>
                    <asp:Label ID="Label13" runat="server" Font-Names="微軟正黑體" Font-Size="X-Large"></asp:Label>
                    <%--CascadingDropDown--%>
                    <ajaxToolkit:CascadingDropDown ID="CascadingDropDown2" runat="server"  TargetControlID="DropDownList1" Category="county" PromptText="請選擇個性" LoadingText="載入中..." ServicePath="~/WebService.asmx" ServiceMethod="GetDropDownContents"/>
                    <ajaxToolkit:CascadingDropDown ID="CascadingDropDown3" runat="server"  TargetControlID="DropDownList2" Category="town" PromptText="請選擇體型大小" LoadingText="載入中..." ServicePath="~/WebService.asmx" ServiceMethod="GetDropDownContents" ParentControlID="DropDownList1"/>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="DropDownList2" EventName="SelectedIndexChanged"  />
                </Triggers>
            </asp:UpdatePanel>
                    </td>
                </tr>
            </table>
        </asp:View>             
        
        <%--4.DIY！--%>
        <asp:View ID="View6" runat="server">

            <table class="b" >
                <tr>
                    <td>
            <br /><br /><br />
            <a href="hatorinini.aspx" target="external" onclick="window.open('hatorinini.aspx', 'external', 'width=550,height=580,left=180,top=10')">
                <img src="../圖/c4_1.png" align="absmiddle"  border="0">
            </a>   
                    </td>
                </tr>
            </table>

            <table class="b" >
                <tr>
                    <td>
            <br /><br /><br />
            <img src="../圖/Line.gif" width="650" />            
            <br /><br /><br />
                    </td>
                </tr>
            </table>

            <table class="b" aria-hidden="False" >
                <tr>
                    <td>
            <%--jQuery_selectmenu--%> 
            <div id="circle"  style="width: 400px" >
                <asp:Label ID="Label7" runat="server" Text="♥我愛角落生物♥" ></asp:Label>
            </div>  
                    </td>
                    <td>
            <fieldset> 
            <label for="radius">字體大小</label>
            <select name="radius" id="radius">
              <option value="12px" selected="selected">12px</option>
              <option value="20px">20px</option>
              <option value="30px">30px</option>
              <option value="40px">40px</option>
              <option value="50px">50px</option>
            </select>
      
            <label for="color">字體顏色</label>
            <select name="color" id="color">
              <option value="black" selected="selected">Black</option>
              <option value="red">Red</option>
              <option value="yellow" >Yellow</option>
              <option value="blue">Blue</option>
              <option value="green">Green</option>
            </select>
    
            <label for="text">換字</label>
            <select name="text" id="text">
              <option value="♥我愛角落生物♥" selected="selected">♥我愛角落生物♥</option>
              <option value="我愛白熊">我愛白熊</option>
              <option value="我愛貓咪">我愛貓咪</option>
              <option value="我愛蝦尾">我愛蝦尾</option>
              <option value="我愛粉圓">我愛粉圓</option>
              <option value="角落生物我都愛">角落生物我都愛</option>
            </select>    
            </fieldset>
                    </td>
                </tr>
            </table>
            
            <table class="b" >
                <tr>
                    <td>
            <br /><br /><br />
            <img src="../圖/Line.gif" width="650" />            
            <br /><br /><br />
                    </td>
                </tr>
            </table>

            <table class="c" >
                <tr>
                    <td>
            <%--jQuery_sortable--%>
            拼圖小遊戲！
            <ul id="sortable">
                <li class="ui-state-default"><img src="<%= aaa %>" width="150" height="150" /></li>
                <li class="ui-state-default"><img src="../圖/Q05.png" width="150" height="150" /></li>
                <li class="ui-state-default"><img src="../圖/Q07.png" width="150" height="150" /></li>
                <li class="ui-state-default"><img src="../圖/Q06.png" width="150" height="150" /></li>
                <li class="ui-state-default"><img src="../圖/Q04.png" width="150" height="150" /></li>
                <li class="ui-state-default"><img src="../圖/Q03.png" width="150" height="150" /></li>
                <li class="ui-state-default"><img src="../圖/Q01.png" width="150" height="150" /></li>
                <li class="ui-state-default"><img src="../圖/Q09.png" width="150" height="150" /></li>
                <li class="ui-state-default"><img src="../圖/Q08.png" width="150" height="150" /></li>
            </ul>
                    </td>
                </tr>
            </table>

            <table class="b" >
                <tr>
                    <td>
            <br /><br /><br />
            <img src="../圖/Line.gif" width="650" />            
            <br /><br /><br />
                    </td>
                </tr>
            </table>

            <table class="b" >
                <tr>
                    <td>
            <a href="yee.aspx" target="external" onclick="window.open('yee.aspx', 'external', 'width=800,height=600,left=180,top=0')">
                <img src="../圖/c4_2.png" align="absmiddle"  border="0">
            </a>   
                    </td>
                </tr>
            </table>
        </asp:View>

        <%--5.故事接龍--%>
        <%--ajax_HtmlEditorExtender--%>
        <asp:View ID="View7" runat="server">
            <script>
              function onContentsChange() {
                alert('contents changed');
              }
            </script>
            <table class="d" >
                <tr>
                    <td>
            <asp:UpdatePanel ID="updatePanel2" runat="server">
            <ContentTemplate>
            <asp:TextBox runat="server" ID="txtBox1" TextMode="MultiLine" Columns="50" Rows="10"
                Text="" /><br />
            <ajaxToolkit:HtmlEditorExtender ID="htmlEditorExtender1" TargetControlID="txtBox1" runat="server" DisplaySourceTab="true" EnableSanitization="False">
            </ajaxToolkit:HtmlEditorExtender>
            <br />
            <asp:Button runat="server" Text="送出" ID="submit" OnClick="btnsubmit_click" Font-Size="Large" Font-Names="微軟正黑體" />
            <br /><br />
            <asp:Label ID="Label接龍" runat="server" ></asp:Label>
            </ContentTemplate>
            </asp:UpdatePanel>
                    </td>
                </tr>
            </table>
        </asp:View>

    </asp:MultiView>
</asp:Content>

