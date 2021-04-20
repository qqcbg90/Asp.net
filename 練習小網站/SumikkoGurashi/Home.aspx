<%@ Page Title="Sumikko Gurashi | 角落生物" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <%--jquery_Dialog--%>
    <script>
      $( function() {
        $( "#dialog" ).dialog();
      } );
    </script> 
    <style type ="text/css">
        p {          
            width: 250px;
            margin-left: auto;
            margin-right: auto;
            text-align: center;            
        }
    </style>
    <div id="dialog" title="哈囉!(*´∀`)~♥">
      <p style="text-align:center">把我關掉<br />就有更多的角落生物可以看噢</p>
    </div>

    <%--版面設定--%>
    <style type ="text/css">
        div {          
            margin-left: auto;
            margin-right: auto;
            text-align: center;            
        }
    </style>

    <%--jQuery_switchClass--%>
    <script src="jquery-3.4.1.min.js"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
    $( function() {
      $( "#button" ).on( "click", function() {
        $( ".newClass" ).switchClass( "newClass", "anotherNewClass", 1000 );
        $( ".anotherNewClass" ).switchClass( "anotherNewClass", "newClass", 1000 );
      });
    });
    </script>
    <style>
    /*.toggler {  height: 320px; }*/
    #button { padding: .5em 1em; text-decoration: none; }
    .anotherNewClass { text-indent: 40px; letter-spacing: .2em; width: 500px; height: 350px; padding: 30px; margin: 10px; font-size: 1.1em; }

    /*ajax_ReorderList*/
    .drag{
        width:20px;
        height:20px;
        cursor:move;
    }    
    </style>

    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
    <%--表格區塊--%>
    <asp:Table ID="Table1" runat="server" BackImageUrl="../圖/topbg0.png" Width="1006" HorizontalAlign="Center">
        <asp:TableRow runat="server" Width="50%">
            <asp:TableCell runat="server">
                <a style="text-align:center">
                    <%--ajax_SliderExtender--%>
                    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                        <ContentTemplate>
                            <ajaxToolkit:SliderExtender ID="SliderExtender1" runat="server" BoundControlID="SliderValue" Maximum="800" Minimum="100" Steps="8" TargetControlID="TextBox2"  />
                            <asp:TextBox ID="SliderValue" runat="server" Visible="False"></asp:TextBox>
                            <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged"  AutoPostBack="true" Text="480"></asp:TextBox>
                            <asp:Image ID="Image2" runat="server" ImageUrl="~/圖/0.png" width="480" height="480" style="border:double; color: #B89F8B;" />
                        </ContentTemplate>
                    </asp:UpdatePanel> 
                </a>
            </asp:TableCell>
            <asp:TableCell runat="server" HorizontalAlign="Center">
                <asp:Label runat="server" Font-Size="X-Large" Font-Bold="true" ForeColor="#7E634D" Font-Names="微軟正黑體">
                    Sumikko Gurashi　角落生物<br/>（すみっコぐらし）
                </asp:Label><br /><br /><br/>      
                
                <%--jQuery_switchClass--%>
                <div class="toggler">
                    <div id="effect" class="newClass ui-corner-all" style="color: #7E634D; font-family: 微軟正黑體;">
                    <%-- <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="#7E634D" Font-Names="微軟正黑體">--%> 
                        <%= aaa %>
                            <%--乘坐電車的時候喜歡坐在盡量靠角落的位置，<br /><br/>
                            去咖啡館的時候也盡可能的想坐在角落裡…<br/><br/>
                            你是不是待在角落裡就會有一種莫名的安心感呢？<br/><br/>
                            怕冷的「北極熊」、沒有自信的「企鵝?」、<br/><br/>
                            吃剩的「炸豬排」、害羞的「貓」等等……<br/><br/>
                            雖有些消極，卻有著許多十分具有個性的「角落生物」們。<br/><br/>--%>
                    <%--</asp:Label>--%>
                    </div>
                </div> 
                <input id="button" type="button" value="字體放大/縮小" class="ui-state-default ui-corner-all" /><br /><br />
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="編輯文字" Visible="False" />

                <%--<asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>       
                    <asp:Label ID="Label2" runat="server" ForeColor="#7E634D" Font-Names="微軟正黑體" >
                            　　乘坐電車的時候喜歡坐在盡量靠角落的位置，　　<br/><br/>
                            　　去咖啡館的時候也盡可能的想坐在角落裡…　　<br/><br/>
                            　　你是不是待在角落裡就會有一種莫名的安心感呢？　　<br/><br/>
                            　　怕冷的「北極熊」、沒有自信的「企鵝?」、　　<br/><br/>
                            　　吃剩的「炸豬排」、害羞的「貓」等等……　　<br/><br/>
                            　　雖有些消極，卻有著許多十分具有個性的「角落生物」們。　　<br/><br/>
                    </asp:Label> --%>
                    <%--ajax_DropDownExtender--%>
                    <%--<ajaxToolkit:DropDownExtender ID="DropDownExtender1" runat="server" TargetControlID="Label2" DropDownControlID="Panel3"></ajaxToolkit:DropDownExtender> 
                    <asp:Panel ID="Panel3" runat="server">                              
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/圖/06.png" Height="30" Width="30" OnClick="ImageButton1_Click1" />
                        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/圖/06.png" Height="35" Width="35" OnClick="ImageButton2_Click" />
                        <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/圖/06.png" Height="40" Width="40" OnClick="ImageButton3_Click"/>
                    </asp:Panel>            
                    </ContentTemplate>
                </asp:UpdatePanel>--%>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
        </asp:View>
        <asp:View ID="View2" runat="server">
    <%--表格區塊(編輯者)--%>
    <asp:Table ID="Table2" runat="server" BackImageUrl="../圖/topbg0.png" Width="1006" HorizontalAlign="Center">
        <asp:TableRow runat="server" Width="50%">
            <asp:TableCell runat="server">
                <a style="text-align:center">
                            <asp:Image ID="Image3" runat="server" ImageUrl="~/圖/0.png" width="480" height="480" style="border:double; color: #B89F8B;" />
                </a>
            </asp:TableCell>
            <asp:TableCell runat="server" HorizontalAlign="Center">
                <asp:Label runat="server" Font-Size="X-Large" Font-Bold="true" ForeColor="#7E634D" Font-Names="微軟正黑體">
                    Sumikko Gurashi　角落生物<br/>（すみっコぐらし）
                </asp:Label><br /><br /><br/>      
                <script>
                function onContentsChange() {
                alert('contents changed');
                }
                </script>

            <asp:TextBox runat="server" ID="txtBox1" TextMode="MultiLine" Columns="50" Rows="10"
                Text="" Height="320" Width="450" /><br />
            <ajaxToolkit:HtmlEditorExtender ID="htmlEditorExtender1" TargetControlID="txtBox1" runat="server" DisplaySourceTab="true" EnableSanitization="False">
            </ajaxToolkit:HtmlEditorExtender>
            <br />
            <asp:Button runat="server" Text="送出" ID="submit" OnClick="btnsubmit_click" Font-Size="Large" Font-Names="微軟正黑體" />
            <br /><br />
            </asp:TableCell></asp:TableRow></asp:Table></asp:View></asp:MultiView><%--ajax_DragPanelExtender--%><asp:Panel ID="Panel1" runat="server" >
    <asp:Image ID="Image1" runat="server" Height="260px" ImageUrl="~/圖/G1.gif" Width="322px" ImageAlign="Right" />
    <ajaxToolkit:DragPanelExtender ID="DragPanelExtender1" runat="server" DragHandleID="Panel1" TargetControlID="Image1" />    
    </asp:Panel>
    <br /><br />

    <%--jQuery_tabs--%>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
    $( function() {
      $( "#tabs" ).tabs({
        event: "mouseover"
      });
    } );
    </script>

    <%--jQuery_selectable--%>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css"> 
    <style>
    #feedback { font-size: 1.4em; }
    #selectable .ui-selecting { background: #FECA40; }
    #selectable .ui-selected { background: #F39814; color: white; }
    #selectable { list-style-type: none; margin: 0; padding: 0; width: 60%; }
    #selectable li { margin: 3px; padding: 0.4em; font-size: 1.4em; height: 18px; }
    </style>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
    $( function() {
      $( "#selectable" ).selectable();
    } );
    </script>

    <%--ajax_CollapsiblePanelExtender--%>
    <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender1" runat="server" CollapseControlID="PanelH1" Collapsed="True" ExpandControlID="PanelH1" ExpandedImage="ImageH1" TargetControlID="PanelH2" />
    <asp:Panel ID="PanelH1" runat="server" Height="100" Width="100">
        <asp:Image ID="ImageH1" runat="server" ImageUrl="~/圖/01圖示.png" Height="100" Width="100" />
        <%--ajax_HoverMenu--%>
        <ajaxToolkit:HoverMenuExtender ID="HoverMenuExtender1" runat="server" TargetControlID="ImageH1" PopupPosition="Right" PopupControlID="Label1">
        </ajaxToolkit:HoverMenuExtender>
        <asp:Label ID="Label1" runat="server" Text="<br>可以點開我噢" ForeColor="#7E634D" Font-Names="微軟正黑體" Font-Size="Larger"></asp:Label></asp:Panel><asp:Panel ID="PanelH2" runat="server" Width="1006px">        
        <asp:Image ID="ImageH2" runat="server" ImageUrl="~/圖/01出場01.jpg" /><br /><br />  
        <%--jQuery_tabs--%>
        <div id="tabs">
            <ul>
                <li><a href="#tabs-1">問題一</a></li><li><a href="#tabs-2">問題二</a></li><li><a href="#tabs-3">訂書GOGO</a></li><li><a href="#tabs-4">可愛動起乃</a></li><li><a href="#tabs-5">角落排名</a></li></ul><div id="tabs-1">
                <asp:UpdatePanel runat="server" ID="up1">
                    <ContentTemplate>
                        <div style="text-align: left">請問您喜歡我們的網頁嗎？<br /> 評分讓我們知道！</div><br /><%--ajax_ToggleButton--%><ajaxToolkit:ToggleButtonExtender ID="ToggleButtonExtender1" runat="server"  
                            TargetControlID="CheckYee" ImageWidth="50" ImageHeight="50" CheckedImageAlternateText="謝謝泥"
                            UncheckedImageAlternateText="請給五顆星評價！" UncheckedImageUrl="../圖/Y7.png"  CheckedImageUrl="../圖/Y_7.png"  />
                           <asp:CheckBox ID="CheckYee" runat="server" />
                           <br /><br /><br /><br />
                        <%--ajax_Rating--%>
                        <ajaxToolkit:Rating ID="ThaiRating" runat="server" BehaviorID="RatingBehavior1"
                         CurrentRating="3"
                         MaxRating="5"
                         StarCssClass="ratingStar"
                         WaitingStarCssClass="savedRatingStar"
                         FilledStarCssClass="filledRatingStar"
                         EmptyStarCssClass="emptyRatingStar"
                         OnChanged="ThaiRating_Changed" /><br /><br />         
                        <div style="text-align: left">               
                        <asp:Button ID="btnSubmit" runat="server" Text="送出" OnClick="Submit_Click" /><br /><br />
                        <asp:Label ID="lblResponse" runat="server"></asp:Label></div></ContentTemplate></asp:UpdatePanel></div><div id="tabs-2">
                <%--jQuery_selectable--%>
                <div style="text-align: left">請問您最喜歡此網站的哪個介面呢？<br /><br /> <ol id="selectable">
                    <li class="ui-widget-content">Home</li><li class="ui-widget-content">SumikkoGurashi</li><li class="ui-widget-content">Image</li><li class="ui-widget-content">Youtube</li><li class="ui-widget-content">Activity</li></ol></div></div><div id="tabs-3">
                <asp:Button ID="Button1" runat="server" Text="GoGo" OnClick="Button1_Click1" />
            </div> 
            <div id="tabs-4">
            <a href="green.aspx" target="external" onclick="window.open('green.aspx', 'external', 'width=900,height=600,left=150,top=0')">
                <br /><img src="../圖/btnHe.png" align="absmiddle"  border="0"><br /> </a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><%--ajax_ReorderList--%><div id="tabs-5">
              <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                  <ajaxToolkit:ReorderList ID="ReorderList1" runat="server" AllowReorder="True" ShowInsertItem="True" DataSourceID="SqlDataSource1" PostBackOnReorder="False" DataKeyField="角色名稱"  SortOrderField="角色編號" Width="100">
                    <DragHandleTemplate>
                      <div class="drag">
                        <asp:Image ID="Image1" runat="server" Height="20px" ImageAlign="AbsBottom" Width="20" ImageUrl="~/圖/flower.png" />
                      </div>
                    </DragHandleTemplate>
                    <ItemTemplate>
                      <asp:Label ID="Label1" runat="server" Text='<% #Eval("角色名稱")%>' ></asp:Label></ItemTemplate></ajaxToolkit:ReorderList><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [角色名稱], [角色編號] FROM [角色]" ConflictDetection="CompareAllValues" UpdateCommand="UPDATE 角色 SET 角色編號 = @角色編號 WHERE (角色名稱 = @orignal_角色名稱)" OldValuesParameterFormatString="original_{0}">
                  <UpdateParameters>
                    <asp:Parameter Name="角色編號" />
                    <asp:Parameter Name="orignal_角色名稱" />
                  </UpdateParameters>
                  </asp:SqlDataSource>
                </ContentTemplate>
              </asp:UpdatePanel>
            </div>        
        </div>
        <%--ajax_TabContainer--%>
        <%--<ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0" OnDemand="True" Width="300" Height="200">
            <ajaxToolkit:TabPanel runat="server" HeaderText="問題一" ID="TabPanel1" OnDemandMode="Always">
                <ContentTemplate>
                    <asp:UpdatePanel runat="server" ID="up1">
                        <ContentTemplate>--%>
                            <%--ajax_Rating--%>
                            <%--<div style="text-align: left">請問您喜歡我們的網頁嗎？<br />
                                                          評分讓我們知道！</div><br />                          
                            <ajaxToolkit:Rating ID="ThaiRating" runat="server" BehaviorID="RatingBehavior1"
                             CurrentRating="3"
                             MaxRating="5"
                             StarCssClass="ratingStar"
                             WaitingStarCssClass="savedRatingStar"
                             FilledStarCssClass="filledRatingStar"
                             EmptyStarCssClass="emptyRatingStar"
                             OnChanged="ThaiRating_Changed" /><br /><br />         
                            <div style="text-align: left">               
                            <asp:Button ID="btnSubmit" runat="server" Text="送出" OnClick="Submit_Click" /><br /><br />
                            <asp:Label ID="lblResponse" runat="server"></asp:Label>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <br /><br />  
                </ContentTemplate>
            </ajaxToolkit:TabPanel>
            <ajaxToolkit:TabPanel ID="TabPanel2" runat="server" HeaderText="問題二" OnDemandMode="Always">
                <ContentTemplate>
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate>--%>
                            <%--ajax_NumericUpDownExtender--%>
                            <%--<div style="text-align: left">請問您最喜歡此網站的哪個介面呢？<br /><br />
                            <asp:TextBox ID="TextBox1" runat="server" Text="3" Width="120" Style="text-align: center" /><br /><br />
                            <asp:Button ID="Button1" runat="server" Text="送出" OnClick="Button1_Click" />
                            <br /><br />
                            <asp:Label ID="Label1" runat="server" />
                            <ajaxToolkit:NumericUpDownExtender ID="NumericUpDownExtender1" runat="server"
                             TargetControlID="TextBox1"
                             Width="150"
                             RefValues="Home;SumikkoGurashi;Image;Youtube;Activity"
                             ServiceDownMethod=""
                             ServiceUpMethod=""
                             TargetButtonDownID=""
                             TargetButtonUpID="" /></div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <br /><br />
                </ContentTemplate>
            </ajaxToolkit:TabPanel>
        </ajaxToolkit:TabContainer>--%>
        <br /><br /> 
    </asp:Panel>

    <%--jQuery_menu--%>
    <link rel="stylesheet" href="//apps.bdimg.com/libs/jqueryui/1.10.4/css/jquery-ui.min.css">
    <script src="//apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="//apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
    <link rel="stylesheet" href="jqueryui/style.css">
    
    <script>
      $(function() {
        $( "#menu" ).menu();
      });
    </script>
    <style>
      .ui-menu { width: 300px; }          
    </style>

    <div  class="absolute">
        <ul id="menu">
            <li class="ui-state-disabled"><a href="#">關於我們</a></li><li class="ui-state-highlight"><a href="#">製作動機</a></li><li class="ui-state-highlight">
                <a href="#">相關網站</a> <ul>
                  <li class="ui-state-disabled"><a href="#">來源</a></li><li><a href="#">圖片來源</a></li><li><a href="#">影片來源</a></li></ul></li><li class="ui-state-highlight">
                <a href="#">同伴</a> <ul>
                  <li class="ui-state-disabled"><a href="#">聯絡方式</a></li><li>
                      <a href="#">韓靚</a> <ul>
                        <li><a href="#">instagram</a></li><li><a href="#">0900000000</a></li><li><a href="#">korea@gmail.com</a></li></ul></li><li>
                      <a href="#">李芯儀</a> <ul>
                        <li><a href="#">instagram</a></li><li><a href="#">0966666666</a></li><li><a href="#">prettySinyiii@gmail.com</a></li></ul></li><li>
                      <a href="#">邱昱嘉</a> <ul>
                        <li><a href="#">instagram</a></li><li><a href="#">0911111111</a></li><li><a href="#">yucha@gmail.com</a></li></ul></li><li>
                      <a href="#">倪慈謙</a> <ul>
                        <li><a href="#">instagram</a></li><li><a href="#">0922222222</a></li><li><a href="#">nini@gmail.com</a></li></ul></li><li>
                      <a href="#">楊玉琪</a> <ul>
                        <li><a href="#">instagram</a></li><li><a href="#">0933333333</a></li><li><a href="#">meimei@gmail.com</a></li></ul></li><li>
                    <a href="#">黃子庭</a> <ul>
                      <li><a href="#">instagram</a></li><li><a href="#">0955555555</a></li><li><a href="#">ting@gmail.com</a></li></ul></li></ul></ul></div><%--ajax_DropShadowExtender--%><ajaxToolkit:DropShadowExtender ID="DropShadowExtender1" runat="server" Opacity="0.5" TargetControlID="Table1" Width="5" />

    <%--ajax_RoundedCornersExtender--%>
    <ajaxToolkit:RoundedCornersExtender ID="rce" runat="server"
     TargetControlID="Table1"
     Radius="6"
     Corners="All" />
    <br /><br />

    <%--ajax_AlwaysVisibleControlExtender--%>
    <asp:UpdatePanel runat="server" ID="UpdatePanel222222">
        <ContentTemplate>            
            <asp:Panel ID="cute05" runat="server" Width="80" Height="80">                    
                <img src="../圖/05.png" />
            </asp:Panel>
            <ajaxToolkit:AlwaysVisibleControlExtender ID="avce" runat="server"
                    TargetControlID="cute05"
                    VerticalSide="Top"
                    VerticalOffset="0"
                    HorizontalSide="Right"
                    HorizontalOffset="20"
                    ScrollEffectDuration=".1" />

            <%--NEW--%>
            <asp:Panel ID="Panel2" runat="server" Width="80" Height="80">                    
                <img src="../圖/水晶球.png" Width="80" Height="80" />
            </asp:Panel>
            <ajaxToolkit:AlwaysVisibleControlExtender ID="AlwaysVisibleControlExtender1" runat="server"
                    TargetControlID="Panel2"
                    VerticalSide="Top"
                    VerticalOffset="0"
                    HorizontalSide="left"
                    HorizontalOffset="20"
                    ScrollEffectDuration=".1" />
            <asp:Panel ID="Panel3" runat="server" Font-Names="微軟正黑體">
                        <asp:Label ID="Label2" runat="server" Text="Label" Font-Size="Larger"></asp:Label></asp:Panel><ajaxToolkit:BalloonPopupExtender ID="BalloonPopupExtender1" runat="server" BalloonPopupControlID="Panel3" TargetControlID="Panel2" BalloonStyle="Rectangle" DisplayOnClick="False" DisplayOnMouseOver="True" Position="BottomRight" BalloonSize="Small">
            </ajaxToolkit:BalloonPopupExtender>

            <%--ajax_AnimationExtender--%>
            <ajaxToolkit:AnimationExtender ID="AnimationExtender1" runat="server" TargetControlID="cute05">
                <Animations>
                    <OnLoad>
                        <FadeIn Duration="1.5" Fps="20" />
                    </OnLoad>
                    <OnClick>
                        <FadeOut Duration="1.5" Fps="20" />
                    </OnClick>
                </Animations></ajaxToolkit:AnimationExtender></ContentTemplate></asp:UpdatePanel><%--ajax_Rating--%><style>
    .ratingStar {
      font-size: 0pt;
      width: 13px;
      height: 12px;
      margin: 0px;
      padding: 0px;
      cursor: pointer;
      display: block;
      background-repeat: no-repeat;
    }
    .filledRatingStar {
      background-image: url(../Images/FilledStar.png);
    }
    .emptyRatingStar {
      background-image: url(../Images/EmptyStar.png);
    }
    .savedRatingStar {
      background-image: url(../Images/SavedStar.png);
    }
    </style></asp:Content>