using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Services;
using System.Web.Services;
using System.Threading;
using AjaxControlToolkit;

public partial class Home : System.Web.UI.Page
{
    protected string aaa = @"乘坐電車的時候喜歡坐在盡量靠角落的位置，<br /><br/>
                            去咖啡館的時候也盡可能的想坐在角落裡…<br/><br/>
                            你是不是待在角落裡就會有一種莫名的安心感呢？<br/><br/>
                            怕冷的「北極熊」、沒有自信的「企鵝?」、<br/><br/>
                            吃剩的「炸豬排」、害羞的「貓」等等……<br/><br/>
                            雖有些消極，卻有著許多十分具有個性的「角落生物」們。<br/><br/>";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (MasterPage.Global.登入 && MasterPage.Global.會員編號 == 1)
            Button2.Visible = true;
        else
            Button2.Visible = false;
        MultiView1.ActiveViewIndex = 0;

        Random Rnd = new Random();
        string num = "";
        for (int i = 0; i < 1; i++)
        {
            num = Rnd.Next(1, 6).ToString();
        }
        Label2.Font.Size = 14;
        if (num == "1")
        {
            Label2.Text = "✿今日運勢✿</br> 幸運顏色: 番茄紅 </br> 今日短語: </br>宜多喝開水";
        }
        else if (num == "2")
        {
            Label2.Text = "✿今日運勢✿</br> 幸運顏色: 水手藍 </br> 今日短語: </br>宜多吃水果";
        }
        else if (num == "3")
        {
            Label2.Text = "✿今日運勢✿</br> 幸運顏色: 孔雀綠 </br> 今日短語: </br>少喝含糖飲料";
        }
        else if (num == "4")
        {
            Label2.Text = "✿今日運勢✿</br> 幸運顏色: 琥珀黃 </br> 今日短語: </br>宜多運動";
        }
        else
        {
            Label2.Text = "✿今日運勢✿</br> 幸運顏色: 薰衣草紫 </br> 今日短語: </br>少出功課";
        }
    }

    protected void Tabs_ActiveTabChanged(object sender, EventArgs e)
    {

    }

    // 送出星星評價
    protected void Submit_Click(object sender, EventArgs e)
    {
        lblResponse.Text = "感謝您的回饋";
        btnSubmit.Enabled = false;
    }
    protected void ThaiRating_Changed(object sender, AjaxControlToolkit.RatingEventArgs e)
    {
        Thread.Sleep(400);
        e.CallbackResult = "Update done. Value = " + e.Value + " Tag = " + e.Tag;
    }

    // 
    protected void Button1_Click(object sender, EventArgs e)
    {
        //Label1.Text = HttpUtility.HtmlEncode(
        //    "謝謝您喜愛我們的" + TextBox1.Text + "介面！");
        //Button1.Enabled = false;
    }

    // 更改文字大小
    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
    {
        //Label2.Font.Size = 10;
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        //Label2.Font.Size = 12;
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        //Label2.Font.Size = 14;
    }

    // 改圖片大小
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {
        int imageWidth = Convert.ToInt32(TextBox2.Text);
        Image2.Width = 1 * imageWidth;
        Image2.Height= 1 * imageWidth;
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("~/SumikkoGurashi/huang.aspx");
    }

    protected void btnsubmit_click(object sender, EventArgs e)
    {
        aaa = (txtBox1.Text).ToString();
        MultiView1.ActiveViewIndex = 0;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        txtBox1.Text = aaa;
    }
}