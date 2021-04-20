using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Sumikko : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        返回.Visible = false;
    }

    protected void 返回_Click(object sender, ImageClickEventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        返回.Visible = false;
    }
    protected void 圖一_Click(object sender, ImageClickEventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        返回.Visible = true;
    }
    protected void 圖二_Click(object sender, ImageClickEventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
        返回.Visible = true;
    }
    protected void 圖三_Click(object sender, ImageClickEventArgs e)
    {
        MultiView1.ActiveViewIndex = 3;
        返回.Visible = true;
    }
    protected void 圖四_Click(object sender, ImageClickEventArgs e)
    {
        MultiView1.ActiveViewIndex = 4;
        返回.Visible = true;
    }
    protected void 圖五_Click(object sender, ImageClickEventArgs e)
    {
        MultiView1.ActiveViewIndex = 5;
        返回.Visible = true;
    }
    protected void 圖六_Click(object sender, ImageClickEventArgs e)
    {
        MultiView1.ActiveViewIndex = 6;
        返回.Visible = true;
    }
    protected void 圖七_Click(object sender, ImageClickEventArgs e)
    {
        MultiView1.ActiveViewIndex = 7;
        返回.Visible = true;
    }
    protected void 圖八_Click(object sender, ImageClickEventArgs e)
    {
        MultiView1.ActiveViewIndex = 8;
        返回.Visible = true;
    }
    protected void 圖九_Click(object sender, ImageClickEventArgs e)
    {
        MultiView1.ActiveViewIndex = 9;
        返回.Visible = true;
    }
    protected void 圖十_Click(object sender, ImageClickEventArgs e)
    {
        MultiView1.ActiveViewIndex = 10;
        返回.Visible = true;
    }
    protected void 圖十一_Click(object sender, ImageClickEventArgs e)
    {
        MultiView1.ActiveViewIndex = 11;
        返回.Visible = true;
    }
    protected void 圖十二_Click(object sender, ImageClickEventArgs e)
    {
        MultiView1.ActiveViewIndex = 12;
        返回.Visible = true;
    }
    protected void 圖十三_Click(object sender, ImageClickEventArgs e)
    {
        MultiView1.ActiveViewIndex = 13;
        返回.Visible = true;
    }
    protected void 圖十四_Click(object sender, ImageClickEventArgs e)
    {
        MultiView1.ActiveViewIndex = 14;
        返回.Visible = true;
    }
    protected void 圖十五_Click(object sender, ImageClickEventArgs e)
    {
        MultiView1.ActiveViewIndex = 15;
        返回.Visible = true;
    }
    protected void 圖十六_Click(object sender, ImageClickEventArgs e)
    {
        MultiView1.ActiveViewIndex = 16;
        返回.Visible = true;
    }
    protected void 圖十七_Click(object sender, ImageClickEventArgs e)
    {
        MultiView1.ActiveViewIndex = 17;
        返回.Visible = true;
    }
    protected void 圖十八_Click(object sender, ImageClickEventArgs e)
    {
        MultiView1.ActiveViewIndex = 18;
        返回.Visible = true;
    }
    protected void 圖十九_Click(object sender, ImageClickEventArgs e)
    {
        MultiView1.ActiveViewIndex = 19;
        返回.Visible = true;
    }
}