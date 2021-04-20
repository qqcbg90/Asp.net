using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SumikkoGurashi_Image : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }

    protected void btnMore_Click(object sender, ImageClickEventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
}