<%@ Page Title="Sumikko Gurashi | 角色介紹" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Sumikko.aspx.cs" Inherits="Sumikko" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
    <link rel="stylesheet" href="角色介紹表格.css" />
    
    <%--ajax_ColorPickerExtender--%> 
    <div style="text-align: left">
    <asp:TextBox ID="txtCardColor" AutoCompleteType="None" Runat="server" Width="92px" />
    <asp:Label ID="lblSample" Runat="Server">すみっコぐらし</asp:Label></div> 
    <ajaxToolkit:ColorPickerExtender 
            ID="ColorPickerExtender1"
            runat="server"
            TargetControlID="txtCardColor"
            PopupButtonID="txtCardColor"
            PopupPosition="BottomLeft"
            SampleControlID="lblSample"            
            Enabled="True" PaletteStyle="Continuous" />
    <br />

    <%--版面設定--%>
    <style type ="text/css">
        div {
            width: 1006px;
            margin-left: auto;
            margin-right: auto;
            text-align: center;
        }
        .auto-style1 {
            width: 437px;
            height: 80px;
        }
    </style>

    <asp:MultiView ID="MultiView1" runat="server">
        <%--All--%>
        <asp:View ID="View1" runat="server">
            <style>
                .sg:hover {
                    background: url('../圖/topbg1.png');
                }
            </style>

            <%--jQuery_Autocomplete(Custom data and display)--%>
            <style>
            #project-label {
              display: block;
              font-weight: bold;
              margin-bottom: 1em;
              font: 16px "微軟正黑體";
              color: #7E634D;
            }
            #project-icon {
              float:inherit;
              height: 125px;
              width: 125px;
              border:0px;
              background:none;
            }
            #project-description {
              margin:0;
              padding: 0;
              font: 16px "微軟正黑體";
              color: #7E634D;
            }
            </style>
            <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
            <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
            <script>
              $( function() {
                var projects = [
                  {
                    value: "白熊",
                    label: "白熊",
                    desc: "一隻白色、胖胖且害羞的北極熊",
                    icon: "1.png"
                  },
                  {
                    value: "企鵝？",
                    label: "企鵝？",
                    desc: "對自己是不是企鵝 不太有把握。",
                    icon: "2.png"
                  },
                  {
                    value: "炸豬排",
                    label: "炸豬排",
                    desc: "炸豬排的邊邊。",
                    icon: "3.png"
                  },
                  {
                    value: "貓咪",
                    label: "貓咪",
                    desc: "害羞、怯懦的貓。",
                    icon: "4.png"
                  },
                  {
                    value: "蜥蜴",
                    label: "蜥蜴",
                    desc: "假冒蜥蜴的恐龍。",
                    icon: "5.png"
                  },
                  {
                    value: "包袱巾(裹巾)",
                    label: "包袱巾(裹巾)",
                    desc: "白熊的行李。",
                    icon: "6.png"
                  },
                  {
                    value: "雜草",
                    label: "雜草",
                    desc: "角落生物中唯一積極的角色。",
                    icon: "7.png"
                  },
                  {
                    value: "炸蝦尾",
                    label: "炸蝦尾",
                    desc: "因為太硬所以被吃剩下來。",
                    icon: "8.png"
                  },
                  {
                    value: "粉圓",
                    label: "粉圓",
                    desc: "是群懶散且消極的傢伙們。",
                    icon: "9.png"
                  },
                  {
                    value: "黑粉圓",
                    label: "黑粉圓",
                    desc: "比彩色的粉圓更彆扭。",
                    icon: "10.png"
                  },
                ];
 
                $( "#project" ).autocomplete({
                minLength: 0,
                source: projects,
                focus: function( event, ui ) {
                    $( "#project" ).val( ui.item.label );
                    return false;
                  },
                  select: function( event, ui ) {
                    $( "#project" ).val( ui.item.label );
                    $( "#project-id" ).val( ui.item.value );
                    $( "#project-description" ).html( ui.item.desc );
                    $( "#project-icon" ).attr( "src", "../圖/" + ui.item.icon );
 
                    return false;
                  }
                })
                .autocomplete( "instance" )._renderItem = function( ul, item ) {
                  return $( "<li>" )
                    .append( " " + item.label + "<br>"+" ")
                    .appendTo( ul );
                };
              } );
              </script> 
            <div id="project-label"  style="font-family: 微軟正黑體; font-size: large;" class="auto-style1" >
            <br />✿熟悉角色的速成班( • ̀ω•́ )✿</div>
            <input id="project" style="font-family: 微軟正黑體; font-size: large; ">
            <br /><br />
            <p id="project-description" style="font-size: large; font-family: 微軟正黑體"></p>
            <br />
            <img id="project-icon" src="" alt="">
            <input type="hidden" id="project-id"><br /><br />


            <asp:Table ID="Table2" runat="server" style="margin-left: 2px" BackImageUrl="../圖/topbg0.png" > 
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                        <asp:ImageButton class="sg" ID="圖一" runat="server" ImageUrl="~/圖/1.png" OnClick="圖一_Click"/>
                        <asp:ImageButton class="sg" ID="圖二" runat="server" ImageUrl="~/圖/2.png" OnClick="圖二_Click"/>
                        <asp:ImageButton class="sg" ID="圖三" runat="server" ImageUrl="~/圖/3.png" OnClick="圖三_Click"/>
                        <asp:ImageButton class="sg" ID="圖四" runat="server" ImageUrl="~/圖/4.png" OnClick="圖四_Click"/>
                        <asp:ImageButton class="sg" ID="圖五" runat="server" ImageUrl="~/圖/5.png" OnClick="圖五_Click"/>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                        <asp:ImageButton class="sg" ID="圖六" runat="server" ImageUrl="~/圖/6.png" OnClick="圖六_Click" />
                        <asp:ImageButton class="sg" ID="圖七" runat="server" ImageUrl="~/圖/7.png" OnClick="圖七_Click" />
                        <asp:ImageButton class="sg" ID="圖八" runat="server" ImageUrl="~/圖/8.png" OnClick="圖八_Click" />
                        <asp:ImageButton class="sg" ID="圖九" runat="server" ImageUrl="~/圖/9.png" OnClick="圖九_Click" />
                        <asp:ImageButton class="sg" ID="圖十" runat="server" ImageUrl="~/圖/10.png" OnClick="圖十_Click" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">                            
                        <asp:ImageButton class="sg" ID="圖十一" runat="server" ImageUrl="~/圖/11.png" OnClick="圖十一_Click" />
                        <asp:ImageButton class="sg" ID="圖十二" runat="server" ImageUrl="~/圖/12.png" OnClick="圖十二_Click" />
                        <asp:ImageButton class="sg" ID="圖十三" runat="server" ImageUrl="~/圖/13.png" OnClick="圖十三_Click" />
                        <asp:ImageButton class="sg" ID="圖十四" runat="server" ImageUrl="~/圖/14.png" OnClick="圖十四_Click" />
                        <asp:ImageButton class="sg" ID="圖十五" runat="server" ImageUrl="~/圖/15.png" OnClick="圖十五_Click" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">                            
                        <asp:ImageButton class="sg" ID="圖十六" runat="server" ImageUrl="~/圖/16.png" OnClick="圖十六_Click" />
                        <asp:ImageButton class="sg" ID="圖十七" runat="server" ImageUrl="~/圖/17.png" OnClick="圖十七_Click" />
                        <asp:ImageButton class="sg" ID="圖十八" runat="server" ImageUrl="~/圖/18.png" OnClick="圖十八_Click"/>
                        <asp:ImageButton class="sg" ID="圖十九" runat="server" ImageUrl="~/圖/19.png" OnClick="圖十九_Click" />
                        <asp:Image ID="空白圖" runat="server" ImageUrl="~/圖/20.png"/>
                    </asp:TableCell>
                </asp:TableRow>                        
            </asp:Table>
        </asp:View>
        <%--角色1--%>
        <asp:View ID="View2" runat="server">
            <table class="tb" style="background-image: url('../圖/topbg.png');" aria-hidden="False">
                <tr class="td1">
                    <th  rowspan="5">
                        <%--ajax_ModalPopupExtender--%>  
                        <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="ImageButton1" PopupControlID="PanelL1"
                                                        BackgroundCssClass="modalBackground" DropShadow="true" PopupDragHandleControlID="PanelL1">
                        </ajaxToolkit:ModalPopupExtender>
                        <ajaxToolkit:AnimationExtender ID="AnimationExtender1" runat="server" TargetControlID="PanelL1" >
                            <Animations> 
                                <OnClick> 
                                    <FadeOut Duration=".5" Fps="20" />
                                </OnClick> 
                            </Animations> 
                        </ajaxToolkit:AnimationExtender >
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/圖/_1.png" />
                        <asp:Panel ID="PanelL1" runat="server" high="100" Width="100">
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/圖/1.png" high="100" Width="100"/>
                        </asp:Panel>
                        <%--<img src="../圖/_1.png"/>--%>
                    </th>
                    <th  colspan="2">
                        <b>白熊（しろくま）</b>
                    </th>
                </tr>
                <tr class="td1">
                    <td>一隻白色、胖胖且害羞的北極熊</td>
                </tr>
                <tr class="td1">
                    <td>因為覺得北方真的太冷了，毅然決定逃往南方</td>
                </tr>
                <tr class="td1">
                    <td>喜歡喝熱熱的茶</td>
                </tr>
                <tr class="td1">
                    <td>常常帶著一個裹巾，那是他的行李</td>
                </tr>
            </table><br/>                
        </asp:View>
        <%--角色2--%>
        <asp:View ID="View3" runat="server">
            <table class="tb" style="background-image: url('../圖/topbg.png');" aria-hidden="False">
                <tr class="td1">
                    <th  rowspan="5">
                        <img src="../圖/_2.png"/>
                    </th>
                    <th  colspan="2">
                        <b>企鵝（?）</b>
                    </th>
                </tr>
                <tr class="td1">
                    <td>其實自己也不知道自己是什麼</td>
                </tr>
                <tr class="td1">
                    <td>只記得以前頭上好像有個蓋子</td>
                </tr>
                <tr class="td1">
                    <td>不知道自己是什麼東西，所以對自己很沒自信</td>
                </tr>
                <tr class="td1">
                    <td>喜歡閱讀和聽音樂</td>
                </tr>
            </table><br/>
        </asp:View>
        <%--角色3--%>
        <asp:View ID="View4" runat="server">
            <table class="tb" style="background-image: url('../圖/topbg.png');" aria-hidden="False">
                <tr class="td1">
                    <th  rowspan="5">
                        <img src="../圖/_3.png"/>
                    </th>
                    <th  colspan="2">
                        <b>炸豬排（とんかつ）</b>
                    </th>
                </tr>
                <tr class="td1">
                    <td>吃完炸豬排的時候，盤子裡總有些外層肥肉，麵皮等被剩下</td>
                </tr>
                <tr class="td1">
                    <td>因為太油了不會吃光，這個角色便是這些剩餘炸粉與肥肉的組合物</td>
                </tr>
                <tr class="td1">
                    <td>全身共有99%的肥肉與炸粉，全身上下只有1%的瘦肉，也就是他的鼻子</td>
                </tr>
                <tr class="td1">
                    <td>因為是被剩下來的，所以對自己很沒自信</td>
                </tr>
            </table><br/>
        </asp:View>
        <%--角色4--%>
        <asp:View ID="View5" runat="server">

            <%--jQuery_resizable--%>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
            <link rel="stylesheet" href="/resources/demos/style.css">
            <style>
            #resizable { width: 396px; height: 400px; padding: 0.5em; }
            #resizable { text-align: center; margin: 0; }
            </style>
            <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
            <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
            <script>
            $( function() {
                $( "#resizable" ).resizable();
            } );
            </script>

            <table class="tb" style="background-image: url('../圖/topbg.png');" aria-hidden="False">
                <tr class="td1">
                    <th  rowspan="5">
                        <%--jQuery_resizable--%>
                        <img src="../圖/_4.png" id="resizable" class="ui-widget-content" />
                        <%--<img src="../圖/_4.png"/>--%>
                    </th>
                    <th  colspan="2">
                        <b>貓咪（貓）（ねこ）</b>
                    </th>
                </tr>
                <tr class="td1">
                    <td>害羞、怯懦的貓</td>
                </tr>
                <tr class="td1">
                    <td>常常躲在角落裡，背對大家抓牆壁</td>
                </tr>
                <tr class="td1">
                    <td>被束口袋緊緊包起來就會感到很平靜</td>
                </tr>
                <tr class="td1">
                    <td>最喜歡的食物是貓罐頭</td>
                </tr>
            </table><br/>     
        </asp:View>
        <%--角色5--%>
        <asp:View ID="View6" runat="server">
            <table class="tb" style="background-image: url('../圖/topbg.png');" aria-hidden="False">
                <tr class="td1">
                    <th  rowspan="5">
                        <img src="../圖/_5.png"/>
                    </th>
                    <th  colspan="2">
                        <b>蜥蜴（とかげ）</b>
                    </th>
                </tr>
                <tr class="td1">
                    <td>假冒蜥蜴的恐龍</td>
                </tr>
                <tr class="td1">
                    <td>倖存的恐龍，因為怕被抓到所以假冒蜥蜴</td>
                </tr>
                <tr class="td1">
                    <td>與假蝸牛感情融洽</td>
                </tr>
                <tr class="td1">
                    <td>愛吃：魚，特長：游泳</td>
                </tr>
            </table><br/>
        </asp:View>
        <%--角色6--%>
        <asp:View ID="View7" runat="server">
            <table class="tb" style="background-image: url('../圖/topbg.png');" aria-hidden="False">
                <tr class="td1">
                    <th  rowspan="5">
                        <img src="../圖/_6.png"/>
                    </th>
                    <th  colspan="2">
                        <b>包袱巾(裹巾)（ふろしき）</b>
                    </th>
                </tr>
                <tr class="td1">
                    <td>白熊的行李</td>
                </tr>
                <tr class="td1">
                    <td>占位時常用到</td>
                </tr>
                <tr class="td1">
                    <td>內容物不明</td>
                </tr>
                <tr class="td1">
                    <td>沒表情，被珍惜的時候會微笑</td>
                </tr>
            </table><br/>
        </asp:View>
        <%--角色7--%>
        <asp:View ID="View8" runat="server">
            <table class="tb" style="background-image: url('../圖/topbg.png');" aria-hidden="False">
                <tr class="td1">
                    <th  rowspan="5">
                        <img src="../圖/_7.png"/>
                    </th>
                    <th  colspan="2">
                        <b>雜草（ざっそう）</b>
                    </th>
                </tr>
                <tr class="td1">
                    <td>角落生物中唯一積極的角色</td>
                </tr>
                <tr class="td1">
                    <td>夢想是成為花，很積極地在過日子</td>
                </tr>
                <tr class="td1">
                    <td>用根部走路，永遠是一張笑臉</td>
                </tr>
                <tr class="td1">
                    <td>植物種類不明</td>
                </tr>
            </table><br/> 
        </asp:View>
        <%--角色8--%>
        <asp:View ID="View9" runat="server">
            <table class="tb" style="background-image: url('../圖/topbg.png');" aria-hidden="False">
                <tr class="td1">
                    <th  rowspan="5">
                        <img src="../圖/_8.png"/>
                    </th>
                    <th  colspan="2">
                        <b>炸蝦尾（えびふらいのしっぽ）</b>
                    </th>
                </tr>
                <tr class="td1">
                     <td>面無表情</td>
                </tr>
                <tr class="td1">
                     <td>因為太硬所以被吃剩下來</td>
                </tr>
                <tr class="td1">
                     <td>和炸豬排都是吃剩食物感情很好</td>
                </tr>
                <tr class="td1">
                     <td>炸蝦的良伴：袋子、番茄、塔塔醬</td>
                </tr>
            </table><br/>
        </asp:View>
        <%--角色9--%>
        <asp:View ID="View10" runat="server">
            <table class="tb" style="background-image: url('../圖/topbg.png');" aria-hidden="False">
                <tr class="td1">
                    <th  rowspan="5">
                        <img src="../圖/_9.png"/>
                    </th>
                    <th  colspan="2">
                        <b>粉圓（たぴおか）</b>
                    </th>
                </tr>
                <tr class="td1">
                    <td>繽紛多彩</td>
                </tr>
                <tr class="td1">
                    <td>喝珍珠奶茶時，總會有幾顆珍珠到最後沒被吸到，它們便是這樣的存在</td>
                </tr>
                <tr class="td1">
                    <td>口頭禪是：「啊～做不下去了啦～」</td>
                </tr>
                <tr class="td1">
                    <td>是群懶散且消極的傢伙們</td>
                </tr>
            </table><br/>  
        </asp:View>
        <%--角色10--%>
        <asp:View ID="View11" runat="server">
            <table class="tb" style="background-image: url('../圖/topbg.png');" aria-hidden="False">
                <tr class="td1">
                    <th  rowspan="5">
                        <img src="../圖/_9.png"/>
                    </th>
                    <th  colspan="2">
                        <b>黑粉圓（ブラックたぴおか）</b>
                    </th>
                </tr>
                <tr class="td1">
                    <td>黑粉圓不常出現</td>
                </tr>
                <tr class="td1">
                    <td>比彩色的粉圓更彆扭</td>
                </tr>
            </table><br/>     
        </asp:View>
        <%--角色11--%>
        <asp:View ID="View12" runat="server">
            <table class="tb" style="background-image: url('../圖/topbg.png');" aria-hidden="False">
                <tr class="td1">
                    <th  rowspan="5">
                        <img src="../圖/_11.png"/>
                    </th>
                    <th  colspan="2">
                         <b>灰塵（ほこり）</b>
                    </th>
                </tr>
                <tr class="td1">
                    <td>會飛、無憂無慮的小灰塵</td>
                </tr>
                <tr class="td1">
                    <td>會大量出現</td>
                </tr>
                <tr class="td1">
                    <td>集結在一起會變大</td>
                </tr>
                <tr class="td1">
                    <td>認為角落就是灰塵們自己的庭院</td>
                </tr>
            </table><br/> 
        </asp:View>
        <%--角色12--%>
        <asp:View ID="View13" runat="server">
            <table class="tb" style="background-image: url('../圖/topbg.png');" aria-hidden="False">
                <tr class="td1">
                    <th  rowspan="5">
                       <img src="../圖/_12.png"/>
                    </th>
                    <th  colspan="2">
                        <b>麻雀（すずめ）</b>
                    </th>
                </tr>
                <tr class="td1">
                    <td>只是一隻平凡的麻雀</td>
                </tr>
                <tr class="td1">
                    <td>很喜歡炸豬排，所以會啄食炸豬排</td>
                </tr>
            </table><br/>    
        </asp:View>
        <%--角色13--%>
        <asp:View ID="View14" runat="server">
            <table class="tb" style="background-image: url('../圖/topbg.png');" aria-hidden="False">
                <tr class="td1">
                    <th  rowspan="5">
                        <img src="../圖/_13.png"/>
                    </th>
                    <th  colspan="2">
                        <b>偽蝸牛（にせつむり）</b>
                    </th>
                </tr>
                <tr class="td1">
                    <td>假冒蝸牛的蛞蝓</td>
                </tr>
                <tr class="td1">
                    <td>和假冒蜥蜴的恐龍是好朋友</td>
                </tr>
                <tr class="td1">
                    <td>常常背錯外殼，靠身體的黏性把外殼黏在身上</td>
                </tr>
                <tr class="td1">
                    <td>外殼是稀有的水玉點點，動不動就道歉</td>
                </tr>
            </table><br/>
        </asp:View>
        <%--角色14--%>
        <asp:View ID="View15" runat="server">
            <table class="tb" style="background-image: url('../圖/topbg.png');" aria-hidden="False">
                <tr class="td1">
                    <th  rowspan="5">
                        <img src="../圖/_14.png"/>
                    </th>
                    <th  colspan="2">
                        <b>幽靈（おばけ）</b>
                    </th>
                </tr>
                <tr class="td1">
                    <td>生活在閣樓的角落裡</td>
                </tr>
                <tr class="td1">
                    <td>他安靜又愛乾淨</td>
                </tr>
                <tr class="td1">
                    <td>不喜歡嚇人</td>
                </tr>
                <tr class="td1">
                    <td>喜歡打掃和咖啡</td>
                </tr>
            </table><br/>
        </asp:View>
        <%--角色15--%>
        <asp:View ID="View16" runat="server">
            <table class="tb" style="background-image: url('../圖/topbg.png');" aria-hidden="False">
                <tr class="td1">
                    <th  rowspan="5">
                        <img src="../圖/_15.png"/>
                    </th>
                    <th  colspan="2">
                        <b>山（やま）</b>
                    </th>
                </tr>                        
                <tr class="td1">
                    <td>一座嚮往富士山的小山</td>
                </tr>
                <tr class="td1">
                    <td>出現在溫泉區假裝成富士山</td>
                </tr>                        
            </table><br/>
        </asp:View>
        <%--角色16--%>
        <asp:View ID="View17" runat="server">
            <table class="tb" style="background-image: url('../圖/topbg.png');" aria-hidden="False">
                <tr class="td1">
                    <th  rowspan="5">
                        <img src="../圖/_16.png"/>
                    </th>
                    <th  colspan="2">
                        <b>鼴鼠（もぐら）</b>
                    </th>
                </tr>
                <tr class="td1">
                    <td>他們生活在地底下的角落</td>
                </tr>
                <tr class="td1">
                    <td>第一次出現在地面上很緊張</td>
                </tr>
                <tr class="td1">
                    <td>一出現在地面後發現了一雙紅色的長靴</td>
                </tr>
                <tr class="td1">
                    <td>就一直穿著了</td>
                </tr>
            </table><br/>
        </asp:View>
        <%--角色17--%>
        <asp:View ID="View18" runat="server">
            <table class="tb" style="background-image: url('../圖/topbg.png');" aria-hidden="False">
                <tr class="td1">
                    <th  rowspan="5">
                        <img src="../圖/_17.png"/>
                    </th>
                    <th  colspan="2">
                        <b>貓頭鷹（フクロウ）</b>
                    </th>
                </tr>
                <tr class="td1">
                    <td>他是麻雀的好朋友</td>
                </tr>
                <tr class="td1">
                    <td>貓頭鷹是夜行性的動物</td>
                </tr>
                <tr class="td1">
                    <td>但為了見好朋友所以忍著睡意</td>
                </tr>
                <tr class="td1">
                    <td>聽說雙眼睜開時會帶來幸福</td>
                </tr>
            </table><br/>
        </asp:View>
        <%--角色18--%>
        <asp:View ID="View19" runat="server">
            <table class="tb" style="background-image: url('../圖/topbg.png');" aria-hidden="False">
                <tr class="td1">
                    <th  rowspan="5">
                        <img src="../圖/_18.png"/>
                    </th>
                    <th  colspan="2">
                        <b>企鵝(真)（ペンギン本物）</b>
                    </th>
                </tr>
                <tr class="td1">
                    <td>是白熊還在北極所遇到的朋友</td>
                </tr>
                <tr class="td1">
                    <td>他來自南方，走遍世界各地</td>
                </tr>
                <tr class="td1">
                    <td>友善的個性，跟任何人都能變成朋友</td>
                </tr>
                <tr class="td1">
                    <td>包袱巾是帶著微笑的</td>
                </tr>
            </table><br/>
        </asp:View>
        <%--角色19--%>
        <asp:View ID="View20" runat="server">
            <table class="tb" style="background-image: url('../圖/topbg.png');" aria-hidden="False">
                <tr class="td1">
                    <th  rowspan="5">
                        <img src="../圖/_19.png"/>
                    </th>
                    <th  colspan="2">
                        <b>綠蜥蜴（グリーントカゲ）</b>
                    </th>
                </tr>
                <tr class="td1">
                    <td>真正的蜥蜴，是恐龍在森林中認識的朋友</td>
                </tr>
                <tr class="td1">
                    <td>他擁有綠色的身體和有手指的小手</td>
                </tr>
                <tr class="td1">
                    <td>喜歡無憂無慮的生活</td>
                </tr>
                <tr class="td1">
                    <td>性格悠哉游哉不拘小節，所以一直也沒有發現蜥蜴是假的</td>
                </tr>
            </table><br/>
        </asp:View>
    </asp:MultiView>
    <asp:ImageButton ID="返回" runat="server" Text="首頁" OnClick="返回_Click" ImageUrl="../圖/btn09.png" /><br />
</asp:Content>


