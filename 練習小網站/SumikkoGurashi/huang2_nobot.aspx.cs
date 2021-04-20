using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class _0520_nobot : System.Web.UI.Page
{

    AjaxControlToolkit.NoBotState durun = AjaxControlToolkit.NoBotState.Valid;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       

        if (NoBot1.IsValid(out durun))
            Response.Write("");
        else
            Response.Write("<script>alert('按鈕速度太快，是不是機器人?')</script>");

        if (TextBox1.Text.Length ==0)
        {
            Label2.Text = "不可為空";
            return;
        }
        else
        {
            Label2.Text = "輸入成功 ";

            lblString.Text += "\r\n" + "*" + TextBox1.Text + "<br>";
        }
    }

}