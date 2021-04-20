using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{

    // 可以跨axpx使用這些變數
    public class Global
    {
        public static bool 登入;
        public static string 暱稱;
        public static int 會員編號;
        public static string 頭貼路徑;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        // 判斷是否登入
        if (Global.登入)
        {
            活動.Enabled = true;
            LinkButton1.Visible = false;
            LinkButton2.Text = "登出";
            Label1.Visible = true;
            Label1.Text = Global.暱稱 + " 哈囉♪";
            Image1.Visible = true;
            Image1.ImageUrl = Global.頭貼路徑;
            LinkButton3.Visible = true;
            if (Global.會員編號 == 1)
                LinkButton6.Visible = true;
        }
        else
        {
            //活動.Enabled = false;
            LinkButton1.Visible = true;
            LinkButton2.Text = "登入";
            Label1.Visible = false;
            Image1.Visible = false;
            LinkButton3.Visible = false;
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        // 判斷要登入還是登出
        if (Global.登入 == false)
        {
            Response.Redirect("~/SumikkoGurashi/LoginTEST.aspx");
        }
        else
        {
            Global.登入 = false;
            Global.暱稱 = "";
            Global.頭貼路徑 = "";
            //活動.Enabled = false;
            LinkButton1.Visible = true;
            LinkButton2.Text = "登入";
            Label1.Visible = false;
            Image1.Visible = false;
            LinkButton3.Visible = false;
            LinkButton6.Visible = false;
        }
    }
}
