<%@ Page Title="Sumikko Gurashi | 註冊" Language="C#" MasterPageFile="~/SumikkoGurashi/MasterPage.master" AutoEventWireup="true" CodeFile="signupTEST.aspx.cs" Inherits="SumikkoGurashi_signupTEST" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <%--jQuery_tooltip--%>
    <script src="jquery-3.4.1.min.js"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
    $( function() {
      $( document ).tooltip();
    } );
    </script>

    <%--版面設定--%>
    <style type ="text/css">
        div {            
            margin-left: auto;
            margin-right: auto;
            text-align: left;
            width: 1006px;
        }
        .watermarked {
            border: 1px solid #BEBEBE;
            color: gray;
            font: 10px "微軟正黑體";
        }
        .popup {
            background-color:white;
            border-style:dashed;
            border-color:cornflowerblue;
        }
    </style>

    <asp:MultiView ID="MultiView1" runat="server">  
        
        <%--填註冊資料--%>
        <asp:View ID="View1" runat="server">
            <br />
            <asp:Label ID="Label2" runat="server" Font-Size="Large" Font-Names="微軟正黑體" ForeColor="#990000" Font-Bold="True"></asp:Label>
            <br /><br />                     
            
            <%--帳號--%>
            <%--<asp:Label ID="Label1" runat="server" Text="帳號：" Font-Names="微軟正黑體" Font-Size="Large"></asp:Label>--%>
            <label for="TextBox1" style="font-family: 微軟正黑體">帳號：</label>
            <asp:TextBox ID="TextBox1" title="（5~10位英數）" runat="server" Font-Size="Large" MaxLength="10" Wrap="False"></asp:TextBox>
            <%--<asp:TextBox ID="TextBox1" runat="server" Font-Size="Large" MaxLength="10" Wrap="False" Width="280"></asp:TextBox>--%>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="請輸入帳號" Font-Bold="True" Font-Names="微軟正黑體" Font-Size="Large" ForeColor="#990000"></asp:RequiredFieldValidator>
            <ajaxToolkit:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server" TargetControlID="TextBox1" WatermarkText="輸入5~10位英數" WatermarkCssClass="watermarked"/>
            <%--<asp:Label ID="Label6" runat="server" Text="（帳號、密碼5~10位英數）" Font-Names="微軟正黑體" Font-Size="Large"></asp:Label>--%>
            <br /><br />
            
            <%--密碼--%>
            <%--<asp:Label ID="Label3" runat="server" Text="密碼：" Font-Names="微軟正黑體" Font-Size="Large"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" Font-Size="Large" MaxLength="10" TextMode="Password" Wrap="False" Width="280"></asp:TextBox>--%>
            <label for="TextBox2" style="font-family: 微軟正黑體">密碼：</label>
            <asp:TextBox ID="TextBox2" title="（5~10位英數）" runat="server" Font-Size="Large" MaxLength="10" Wrap="False" TextMode="Password" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="請輸入密碼" Font-Bold="True" Font-Names="微軟正黑體" Font-Size="Large" ForeColor="#990000"></asp:RequiredFieldValidator>
            <%--<asp:Label ID="Label7" runat="server" Text="（5~10位英數）" Font-Names="微軟正黑體" Font-Size="Large"></asp:Label>--%>
            <ajaxToolkit:PasswordStrength ID="PasswordStrength2" runat="server" TargetControlID="TextBox2"
                                          DisplayPosition="BelowRight" StrengthIndicatorType="Text"    PreferredPasswordLength="10"     PrefixText="Strength:"  TextCssClass="TextIndicator_TextBox2"
                                          MinimumNumericCharacters="0" MinimumSymbolCharacters="0" RequiresUpperAndLowerCaseCharacters="false" TextStrengthDescriptions="Very Poor;Weak;Average;Strong;Excellent"
                                          CalculationWeightings ="50;15;15;20" />
            <br /><br />
            <%--FilteredTextBoxExtender--%>
            <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" TargetControlID="TextBox1" FilterType="Numbers,LowercaseLetters,UppercaseLetters" />
            <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" TargetControlID="TextBox2" FilterType="Numbers,LowercaseLetters,UppercaseLetters" />
            
            <%--暱稱--%>
            <%--<asp:Label ID="Label4" runat="server" Text="暱稱：" Font-Names="微軟正黑體" Font-Size="Large"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" Font-Size="Large" MaxLength="10" Wrap="False" Width="280"></asp:TextBox>--%>
            <label for="TextBox3" style="font-family: 微軟正黑體">暱稱：</label>
            <asp:TextBox ID="TextBox3" title="（10個字以內的暱稱）" runat="server" Font-Size="Large" MaxLength="10" Wrap="False"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="請輸入暱稱" Font-Bold="True" Font-Names="微軟正黑體" Font-Size="Large" ForeColor="#990000"></asp:RequiredFieldValidator>
            <ajaxToolkit:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender3" runat="server" TargetControlID="TextBox3" WatermarkText="輸入10個字以內的暱稱" WatermarkCssClass="watermarked"/>                       
            <%--<asp:Label ID="Label8" runat="server" Text="（10個字以內的暱稱）" Font-Names="微軟正黑體" Font-Size="Large"></asp:Label>--%>
            <br /><br />
            
            <%--ajax_MaskedEdit --%>
            <%--電話--%>
            <asp:Label ID="LabelNi" runat="server" Text="電話：" Font-Names="微軟正黑體" Font-Size="Large"></asp:Label>
            <asp:TextBox ID="TextBoxNi" runat="server" Font-Size="Large" MaxLength="10"  Wrap="False" Width="248"></asp:TextBox>
            <ajaxToolkit:MaskedEditExtender ID="MaskedEditExtender2" runat="server" TargetControlID="TextBoxNi" Mask="(99)9999-9999" MaskType="None" MessageValidatorTip="true"  InputDirection="LeftToRight" ClearMaskOnLostFocus="false"/>            
            <br /><br />

            <%--生日--%>
            <asp:Label ID="Label6" runat="server" Text="生日：" Font-Names="微軟正黑體" Font-Size="Large"></asp:Label>
            <asp:TextBox ID="TextBox7" runat="server" Font-Size="Large" MaxLength="10" Wrap="False" Width="380" ReadOnly="True"></asp:TextBox>
            <ajaxToolkit:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender5" runat="server" TargetControlID="TextBox7" WatermarkText="按日曆選生日噢  ก็ʕ•͡ᴥ•ʔ ก้" WatermarkCssClass="watermarked"/>                       
            <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="TextBox7" Format="yyyy-MM-dd" PopupButtonID="ImageButton1" PopupPosition="BottomLeft" />            
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/圖/日曆.png" Height="29px" Width="29px"/>
            <br /><br />
            
            <%--職業--%>
             <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Label ID="Label12" runat="server" Text="職業：" Font-Names="微軟正黑體" Font-Size="Large"></asp:Label>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>                   
                    <ajaxToolkit:PopupControlExtender ID="PopupControlExtender1" runat="server" TargetControlID="TextBox6" PopupControlID="Panel1" Position="Bottom" CommitProperty="value">
                    </ajaxToolkit:PopupControlExtender>
                    <asp:Panel ID="Panel1" runat="server" CssClass="popup" Width="100px">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                            <asp:ListItem Text="軍警"></asp:ListItem>
                             <asp:ListItem Text="公務人員"></asp:ListItem>
                            <asp:ListItem Text="教育"></asp:ListItem>
                            <asp:ListItem Text="醫療"></asp:ListItem>
                             <asp:ListItem Text="服務業"></asp:ListItem>                        
                             <asp:ListItem Text="學生"></asp:ListItem>
                            <asp:ListItem Text="其他"></asp:ListItem>
                        </asp:RadioButtonList>
                    </asp:Panel>
                  </ContentTemplate>
            </asp:UpdatePanel>
            <br />

            <%--信箱--%>
            <asp:Label ID="Label5" runat="server" Text="信箱：" Font-Names="微軟正黑體" Font-Size="Large"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" Font-Size="Large" Wrap="False" TextMode="Email" Width="380px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="請輸入信箱　" Font-Bold="True" Font-Names="微軟正黑體" Font-Size="Large" ForeColor="#990000"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="請輸入正確的信箱" ControlToValidate="TextBox4" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Bold="True" Font-Names="微軟正黑體" Font-Size="Large" ForeColor="#990000"></asp:RegularExpressionValidator>
            <br /><br />
            
            <%--地址--%>
            <ajaxToolkit:ListSearchExtender ID="ListSearch" runat="server" TargetControlID="ListBox1" PromptText="search city" 
                PromptPosition="Top"  IsSorted="true" QueryPattern="StartsWith">
            </ajaxToolkit:ListSearchExtender>
            <asp:Label ID="Labelyee" runat="server" Text="居住縣市：" Font-Names="微軟正黑體" Font-Size="Large"></asp:Label>
            <asp:ListBox ID="ListBox1" runat="server"  Font-Size="15" Width="170px" >
            <asp:ListItem >Changhua </asp:ListItem>
            <asp:ListItem >Chiayi</asp:ListItem>
            <asp:ListItem >Hsinchu</asp:ListItem>
            <asp:ListItem >Kaohsiung</asp:ListItem>
            <asp:ListItem >Miaoli </asp:ListItem>
            <asp:ListItem >Nantou</asp:ListItem>
            <asp:ListItem >New Taipei </asp:ListItem>
            <asp:ListItem >Pingtung</asp:ListItem>
            <asp:ListItem >Taichung</asp:ListItem>
            <asp:ListItem >Tainan</asp:ListItem>
            <asp:ListItem >Taipei</asp:ListItem>
            <asp:ListItem >Taoyuan</asp:ListItem>
            <asp:ListItem >Yunlin </asp:ListItem>
            </asp:ListBox>
            <br /><br />

            <%--完成--%>
            <asp:Button ID="Button1" runat="server" Text="GO ✧*｡٩(ˊᗜˋ*)و✧*｡" OnClick="Button1_Click" Font-Size="Large" Height="35px" Width="280px" Font-Names="微軟正黑體" />
            <br /><br />  
        </asp:View>

        <%--檢查驗證碼--%>
        <asp:View ID="View2" runat="server">
            <br />
            <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="微軟正黑體" Font-Size="Large" ForeColor="#990000"></asp:Label>
            <br /><br />                  
            <asp:Label ID="Label9" runat="server" Text="" Font-Names="微軟正黑體" Font-Size="Large"></asp:Label>
            <br /><br />
            <asp:Label ID="Label10" runat="server" Text="請輸入六位數驗證碼：" Font-Names="微軟正黑體" Font-Size="Large"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" Font-Size="Large" Wrap="False" MaxLength="6"></asp:TextBox>
            <br /><br />                  
            <asp:Button ID="Button3" runat="server" Text="重填資料" OnClick="Button3_Click" Font-Size="Large" Height="35px" Font-Names="微軟正黑體" />&nbsp&nbsp
            <asp:Button ID="Button2" runat="server" Font-Names="微軟正黑體" Font-Size="Large" Height="35px" OnClick="Button2_Click" Text="GO ✧*｡٩(ˊᗜˋ*)و✧*｡" Width="280px" />
            <br /><br />
        </asp:View>
    </asp:MultiView> 
</asp:Content>

