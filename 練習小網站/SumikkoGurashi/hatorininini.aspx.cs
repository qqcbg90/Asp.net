using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default9 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label4.Text = "";
        Image1.Visible = false;
        Table1.Visible = false;
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Image1.Visible = true;
        Table1.Visible = true;
        if(CheckBox1.Checked&&CheckBox6.Checked&&CheckBox8.Checked)
        {
            Label4.Text = "你都答對惹!";
        }
        else if(CheckBox1.Checked&&CheckBox6.Checked)
        {
            Label4.Text = "第三題答錯惹";
        }
        else if(CheckBox1.Checked&&CheckBox8.Checked)
        {
            Label4.Text = "第二題答錯惹";
        }
        else if(CheckBox6.Checked&&CheckBox8.Checked)
        {
            Label4.Text = "第一題答錯惹";
        }
        else if(CheckBox1.Checked)
        {
            Label4.Text = "第二題跟第三題答錯惹";
        }
        else if(CheckBox6.Checked)
        {
            Label4.Text = "第一題跟第三題答錯惹";
        }
        else if(CheckBox8.Checked)
        {
            Label4.Text = "第一題跟第二題答錯惹";
        }
        else
        {
            Label4.Text = "都答錯惹噢QQ";
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect(Request.Url.ToString());
    }
}