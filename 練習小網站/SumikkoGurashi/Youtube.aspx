<%@ Page Title="Sumikko Gurashi | Youtube" Language="C#" MasterPageFile="~/SumikkoGurashi/MasterPage.master" AutoEventWireup="true" CodeFile="Youtube.aspx.cs" Inherits="SumikkoGurashi_Youtube" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">    

  <%--jQuery_accordion--%>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#accordion" )
      .accordion({
        header: "> div > h3"
      })
      .sortable({
        axis: "y",
        handle: "h3",
        stop: function( event, ui ) {
          ui.item.children( "h3" ).triggerHandler( "focusout" );
          $( this ).accordion( "refresh" );
        }
      });
  } );
  </script>
  <%--jQuery_accordion--%>
  <div id="accordion" >
  <div class="group">
    <h3 style="font-family: 微軟正黑體;width: 980px;color: #7E634D; background-color: #ffdec9; border: medium dashed #FFFF00" text-align:"center">可愛 1</h3>
    <div style="margin-left:auto; width:930px; height:561px; margin-right: auto; text-align: center;">
       <iframe width="920" height="517" src="https://www.youtube.com/embed/CrJzlWHBwGs?list=PL2nNLUYH9TlSBuJaKui0ujntfR4Vc_HeJ"></iframe>
    </div>
  </div>
  <div class="group">
    <h3 style="font-family: 微軟正黑體;width: 980px; color: #7E634D; background-color: #ffdec9; border: medium dashed #FFFF00" text-align:"center">可愛 2</h3>
    <div style="margin-left:auto; width:930px; height:561px; margin-right: auto; text-align: center;">
       <iframe width="920" height="517" src="https://www.youtube.com/embed/-zeI9JTk7iM" ></iframe>
    </div>
  </div>
  <div class="group">
    <h3 style="font-family: 微軟正黑體;width: 980px; color: #7E634D; background-color: #ffdec9; border: medium dashed #FFFF00" text-align:"center">可愛 3</h3>
    <div style="margin-left:auto; width:930px; height:561px; margin-right: auto; text-align: center;">
       <iframe width="920" height="517" src="https://www.youtube.com/embed/CJS3xc9FoRY"></iframe>
    </div>
  </div>
  </div><br /><br />


    <%--ajax_BulletedList--%>
    <asp:BulletedList ID="BulletedList1" runat="server" BorderStyle="Outset" BulletStyle="Circle" DisplayMode="HyperLink">
        <asp:ListItem Value="https://www.youtube.com/watch?v=eR9gSrIQ37g">介紹影片_01</asp:ListItem>
        <asp:ListItem Value="https://www.youtube.com/watch?v=qrGnmDsdU90">介紹影片_02</asp:ListItem>
        <asp:ListItem Value="https://www.youtube.com/watch?v=4r1TZSMura8">介紹影片_03</asp:ListItem>
        <asp:ListItem Value="https://www.youtube.com/watch?v=RTmCR_YEf_E">日常影片_01</asp:ListItem>
        <asp:ListItem Value="https://www.youtube.com/watch?v=FB2RdpK4gRU">日常影片_02</asp:ListItem>
        <asp:ListItem Value="https://www.youtube.com/watch?v=fMc6a0u8ILw">日常影片_03</asp:ListItem>
        <asp:ListItem Value="https://www.youtube.com/watch?v=e4PX5tNocyw">劇場影片_01</asp:ListItem>
        <asp:ListItem Value="https://www.youtube.com/watch?v=DQJ3aB6TO94">劇場影片_02</asp:ListItem>
        <asp:ListItem Value="https://www.youtube.com/watch?v=y9_GRaPOuxM">劇場影片_03</asp:ListItem>
        <asp:ListItem Value="https://www.youtube.com/watch?v=8wCZ9sW5s0Y">映画_01</asp:ListItem>
        <asp:ListItem Value="https://www.youtube.com/watch?v=CJTymFgKoGs">映画_02</asp:ListItem>
        <asp:ListItem Value="https://www.youtube.com/watch?v=IDY8Td2f5-0">映画_03</asp:ListItem>
    </asp:BulletedList>
    <ajaxToolkit:PagingBulletedListExtender ID="BulletedList1_PagingBulletedListExtender" runat="server" BehaviorID="BulletedList1_PagingBulletedListExtender" SelectIndexCssClass="" TargetControlID="BulletedList1" UnselectIndexCssClass="" IndexSize="2"/>

    <%--ajax_Accordion--%>
    <%--<ajaxToolkit:Accordion ID="MyAccordion" runat="Server" SelectedIndex="0" HeaderCssClass="accordionHeader"
                           HeaderSelectedCssClass="accordionHeaderSelected" ContentCssClass="accordionContent"
                           AutoSize="Fill" FadeTransitions="true" TransitionDuration="250" FramesPerSecond="40" RequireOpenedPane="false"  SuppressHeaderPostbacks="true" Width="1006">
        <Panes>
            <ajaxToolkit:AccordionPane runat="server" ID="AccordionPane1"
                                       HeaderCssClass="accordionHeader"
                                       HeaderSelectedCssClass="accordionHeaderSelected"
                                       ContentCssClass="accordionContent" Width="1006">
                <Header>可愛一</Header>
                <Content>     
                    <iframe width="1000" height="561" src="https://www.youtube.com/embed/CrJzlWHBwGs?list=PL2nNLUYH9TlSBuJaKui0ujntfR4Vc_HeJ"></iframe>
                </Content>
            </ajaxToolkit:AccordionPane>
            <ajaxToolkit:AccordionPane runat="server" ID="AccordionPane2"
                                       HeaderCssClass="accordionHeader"
                                       HeaderSelectedCssClass="accordionHeaderSelected"
                                       ContentCssClass="accordionContent" Width="1006">
                <Header>可愛二</Header>
                <Content>     
                    <iframe width="1000" height="561" src="https://www.youtube.com/embed/-zeI9JTk7iM" ></iframe>
                </Content>
            </ajaxToolkit:AccordionPane> 
            <ajaxToolkit:AccordionPane runat="server" ID="AccordionPane3"
                                       HeaderCssClass="accordionHeader"
                                       HeaderSelectedCssClass="accordionHeaderSelected"
                                       ContentCssClass="accordionContent">
                <Header>可愛三</Header>
                <Content>     
                    <iframe width="1000" height="561" src="https://www.youtube.com/embed/CJS3xc9FoRY"></iframe>
                </Content>
            </ajaxToolkit:AccordionPane> 
        </Panes>
    </ajaxToolkit:Accordion>--%>

    <%--版面設定--%>
    <style type ="text/css">
        div {
            width: 1006px;
            margin-left: auto;
            margin-right: auto;
            text-align: center;
        }
        /*.auto-style1 {
            width: 437px;
            height: 80px;

        }
        .accordionHeader {
            border: 1px solid white;
            color: 	#7E634D;
            background-color:lightgoldenrodyellow;
            font-family: 微軟正黑體;
            font-size: 20px;
            font-weight: bold;
            padding: 5px;
            margin-top: 5px;
            cursor: pointer;
        }
        #master_content .accordionHeader a {
            color: #FFFFFF;
            background: none;
            text-decoration: none;
        }
        #master_content .accordionHeader a:hover {
            background: none;
            text-decoration: underline;
        }
        .accordionHeaderSelected {
            border: 1px solid #FFD2D2;
            color: #FF7575;
            background-color:lightgoldenrodyellow;
            font-family: 微軟正黑體;
            font-size: 20px;
            font-weight: bold;
            padding: 5px;
            margin-top: 5px;
            cursor: pointer;
        }*/
    </style>
    <%--<iframe width="1000" height="561" src="https://www.youtube.com/embed/CrJzlWHBwGs?list=PL2nNLUYH9TlSBuJaKui0ujntfR4Vc_HeJ" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>--%>
</asp:Content>

