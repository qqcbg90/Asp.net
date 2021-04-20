using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class SumikkoGurashi_LoginTEST : System.Web.UI.Page
{
    // 資料庫路徑設定
    string conStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\qqcbg\OneDrive\桌面\程式設計\ASP.NET\ASP.NET_整合版\練習小網站\App_Data\Database.mdf;Integrated Security=True";

    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        // 防呆
        Label2.Text = "";
        if (TextBox1.Text.Length < 5 || TextBox2.Text.Length < 5)
        {
            Label2.Text = "要輸入完整的帳號密碼唷_(´ཀ`」 ∠)_ ";
            return;
        }
        // 抓會員資料
        MasterPage.Global.會員編號 = 0;
        SqlConnection con = new SqlConnection(conStr);
        con.Open();
        string cmdText = "SELECT 會員.會員帳號, 會員.會員密碼, 會員.會員暱稱, 會員.會員編號, 會員.會員頭貼 FROM 會員 WHERE ((會員.會員帳號)='" + TextBox1.Text + "')";
        SqlCommand cmd = new SqlCommand(cmdText, con);
        SqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            string ID = reader.GetString(0);
            string PW = reader.GetString(1);
            string NAME = reader.GetString(2);
            int NUM = reader.GetInt32(3);
            string img = (reader.GetString(4)).ToString();
            if (TextBox1.Text == ID)
            {
                if (TextBox2.Text == PW)
                {
                    MasterPage.Global.登入 = true;
                    MasterPage.Global.暱稱 = NAME;
                    MasterPage.Global.會員編號 = NUM;
                    MasterPage.Global.頭貼路徑 = img;
                    Response.Redirect("~/SumikkoGurashi/Home.aspx");  // 導向到首頁
                }
                else
                {
                    Label2.Text = "密碼錯誤(;´༎ຶД༎ຶ`)";
                    return;
                }
            }
        }
        reader.Close();
        con.Close();
        if (MasterPage.Global.會員編號 == 0)  // 沒找到輸入的會員帳號
            Label2.Text = "沒有這個帳號歐(;´༎ຶД༎ຶ`)";
    }
}