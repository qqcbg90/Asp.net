using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class SumikkoGurashi_Activity : System.Web.UI.Page
{
    // 資料庫路徑設定
    string conStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\qqcbg\OneDrive\桌面\程式設計\ASP.NET\ASP.NET_整合版\練習小網站\App_Data\Database.mdf;Integrated Security=True";
    protected string aaa = "../圖/Q02.png";

    protected void Page_Load(object sender, EventArgs e)
    {
        // 顯示活動首頁
        MultiView1.ActiveViewIndex = 2;
    }
    //
    protected void 抓接龍留言()
    {
        Label接龍.Text = "";

        SqlConnection con = new SqlConnection(conStr);
        con.Open();

        string sql = @"SELECT 會員暱稱, 故事內容, 接龍時間
                        FROM 故事接龍
                        LEFT OUTER JOIN 會員
                        ON 故事接龍.會員編號 = 會員.會員編號";

        SqlCommand cmd = new SqlCommand(sql, con);
        SqlDataReader reader = cmd.ExecuteReader();

        while (reader.Read())
        {
            string 會員暱稱 = reader.GetString(0);
            string 故事內容 = reader.GetString(1);
            string 接龍時間 = reader.GetString(2);

            Label接龍.Text += string.Format("{0}接 → {1} ({2})<br /><br />", 會員暱稱, 故事內容, 接龍時間);
        }

        reader.Close();
        con.Close();
    }
    
    // 資料庫
    SqlConnection conn;
    SqlCommand cmd;
    public bool TryDoSql(string sqlcmd)
    {
        bool res = false;
        int i;
        SqlConnection conn = new SqlConnection(conStr);
        try
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand(sqlcmd, conn);
            i = cmd.ExecuteNonQuery();
            if (i > 0)
                res = true;
        }
        catch (Exception ex)
        {
            Label2.Text = ex.ToString();
        }
        finally
        {
            conn.Close();
            conn.Dispose();
        }
        return res;
    }
    public long getMaxNum(string col, string table)
    {
        long imax = -1;
        using (SqlConnection conn = new SqlConnection(conStr))
        {
            string sqlCmd = string.Format("SELECT MAX({0}) From {1};", col, table);
            using (SqlCommand cmd = new SqlCommand(sqlCmd))
            {
                using (SqlDataAdapter da = new SqlDataAdapter(sqlCmd, conn))
                {
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    if (!long.TryParse(dt.Rows[0][0].ToString(), out imax))
                        imax = 0;
                }
            }
        }
        return imax;
    }
    //
    protected void 檢查今天投票沒()
    {
        SqlConnection con = new SqlConnection(conStr);
        con.Open();
        string cmdText = @"SELECT 投票活動.投票序號
                           FROM 會員 INNER JOIN 投票活動 ON 會員.會員編號 = 投票活動.會員編號
                           WHERE (((會員.會員編號)={0}) AND ((投票活動.投票日期)='{1}'));";
        cmdText= string.Format(cmdText, MasterPage.Global.會員編號, String.Format("{0:yyyy/MM/dd}", DateTime.Now.Date));
        SqlCommand cmd = new SqlCommand(cmdText, con);
        SqlDataReader reader = cmd.ExecuteReader();
        int count = 0;
        while (reader.Read())
        {
            count = reader.GetInt32(0);
            if (count != 0)
            {
                ImageButton1.Visible = false;
                RadioButton1.Enabled = false;
                RadioButton2.Enabled = false;
                RadioButton3.Enabled = false;
                RadioButton4.Enabled = false;
                RadioButton5.Enabled = false;
                Label6.Text = "您今天投過票了唷！";
                return;
            }
        }
        reader.Close();
        con.Close();
    }
    //
    protected void 現在幾票了()
    {
        int count = -1;
        decimal[] value;
        value = new decimal[5];
        //pie
        string[] x = new string[5];
        decimal[] y = new decimal[5];

        SqlConnection con = new SqlConnection(conStr);
        con.Open();
        string cmdText = @"SELECT 角色.角色編號, Count(投票活動.角色編號) AS 角色編號之筆數
                           FROM 角色 INNER JOIN 投票活動 ON 角色.角色編號 = 投票活動.角色編號
                           GROUP BY 角色.角色編號;";
        SqlCommand cmd = new SqlCommand(cmdText, con);
        SqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            int 角色編號 = reader.GetInt32(0);
            int 目前票數 = reader.GetInt32(1);
            if (角色編號 == 1)
                Label1.Text = "目前票數：" + 目前票數;
            else if (角色編號 == 2)
                Label2.Text = "目前票數：" + 目前票數;
            else if (角色編號 == 3)
                Label3.Text = "目前票數：" + 目前票數;
            else if (角色編號 == 4)
                Label4.Text = "目前票數：" + 目前票數;
            else if (角色編號 == 5)
                Label5.Text = "目前票數：" + 目前票數;

            decimal num = reader.GetInt32(0);
            decimal tal = reader.GetInt32(1);

            count++;
            switch (count)
            {
                case 0:
                    value[count] = tal;
                    y[0] = tal;
                    break;
                case 1:
                    value[count] = tal;
                    y[1] = tal;
                    break;
                case 2:
                    value[count] = tal;
                    y[2] = tal;
                    break;
                case 3:
                    value[count] = tal;
                    y[3] = tal;
                    break;
                case 4:
                    value[count] = tal;
                    y[4] = tal;
                    break;
            }

        }

        BarChart1.Series.Add(new AjaxControlToolkit.BarChartSeries { Data = value, BarColor = "#A88970", Name = "票數" });
        LineChart1.Series.Add(new AjaxControlToolkit.LineChartSeries { Data = value, LineColor = "#A88970", Name = "票數" });
        AreaChart1.Series.Add(new AjaxControlToolkit.AreaChartSeries { Data = value, AreaColor = "#A88970", Name = "票數" });

        //pie
        x[0] = "Shirokuma";
        x[1] = "Penguin?";
        x[2] = "Neko";
        x[3] = "Tonkatsu";
        x[4] = "Tokage";
        PieChart1.PieChartValues.Add(new AjaxControlToolkit.PieChartValue { Data = y[0], Category = x[0], PieChartValueColor = "#FFB8B1" });
        PieChart1.PieChartValues.Add(new AjaxControlToolkit.PieChartValue { Data = y[1], Category = x[1], PieChartValueColor = "#DCF5B4" });
        PieChart1.PieChartValues.Add(new AjaxControlToolkit.PieChartValue { Data = y[2], Category = x[2], PieChartValueColor = "#FFCA83" });
        PieChart1.PieChartValues.Add(new AjaxControlToolkit.PieChartValue { Data = y[3], Category = x[3], PieChartValueColor = "#FFF090" });
        PieChart1.PieChartValues.Add(new AjaxControlToolkit.PieChartValue { Data = y[4], Category = x[4], PieChartValueColor = "#9EE2F5" });
        //
        BubbleChart1.BubbleChartValues.Add(new AjaxControlToolkit.BubbleChartValue { X = 1, Y = 50, Data = y[0], Category = x[0], BubbleColor = "#FFB8B1" });
        BubbleChart1.BubbleChartValues.Add(new AjaxControlToolkit.BubbleChartValue { X = 2, Y = 10, Data = y[1], Category = x[1], BubbleColor = "#DCF5B4" });
        BubbleChart1.BubbleChartValues.Add(new AjaxControlToolkit.BubbleChartValue { X = 3, Y = 20, Data = y[2], Category = x[2], BubbleColor = "#FFCA83" });
        BubbleChart1.BubbleChartValues.Add(new AjaxControlToolkit.BubbleChartValue { X = 4, Y = 15, Data = y[3], Category = x[3], BubbleColor = "#FFF090" });
        BubbleChart1.BubbleChartValues.Add(new AjaxControlToolkit.BubbleChartValue { X = 5, Y = 10, Data = y[4], Category = x[4], BubbleColor = "#9EE2F5" });

        reader.Close();
        con.Close();
    }
    
    protected void MultiView1_PreRender(object sender, EventArgs e)
    {
        // 判斷有沒有登入
        if (!MasterPage.Global.登入)        
            MultiView1.ActiveViewIndex = 1;  //未登入的話就顯示未登入畫面(view2)
        //if (a != 0)
        //{
        //    MultiView1.ActiveViewIndex = 0;
        //    a--;
        //}
    }
    //
    // 活動首頁選擇投票活動
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        檢查今天投票沒();
        現在幾票了();
        MultiView1.ActiveViewIndex = 0;
    }
    // 活動首頁選擇抽籤活動
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        MultiView1.ActiveViewIndex = 3;
    }
    //
    // 投票活動
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        // 判斷投誰
        int 角色編號 = 0;
        if (RadioButton1.Checked)
            角色編號 = 1;
        else if (RadioButton2.Checked)
            角色編號 = 2;
        else if (RadioButton3.Checked)
            角色編號 = 3;
        else if (RadioButton4.Checked)
            角色編號 = 4;
        else if (RadioButton5.Checked)
            角色編號 = 5;
        else
        {
            Label6.Text = "請選擇角色！";
            MultiView1.ActiveViewIndex = 0;
            return;
        }

        // 儲存
        long 投票序號 = getMaxNum("投票序號", "投票活動");
        投票序號++;
        string sqlcmd = "Insert Into 投票活動 Values({0}, '{1}', '{2}', '{3}')";
        sqlcmd = string.Format(sqlcmd, 投票序號, MasterPage.Global.會員編號, 角色編號, String.Format("{0:yyyy/MM/dd}", DateTime.Now.Date));
        if (TryDoSql(sqlcmd))
        {
            Response.Write("<script>alert('投票成功！');</script>");
            //MultiView1.ActiveViewIndex = 0;
            檢查今天投票沒();
            現在幾票了();
            //update.Update();
            //MultiView1.PreRender(sender,e);
        }
        else
            Label6.Text = "投票失敗！";
        MultiView1.ActiveViewIndex = 0;
        //a++;
        //Response.Redirect(Request.Url.ToString());
        
    }

    protected void UpdateButton_Click1(object sender, ImageClickEventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        return;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 4;
        var z = DropDownList1.SelectedItem.Text;
        var q = DropDownList2.SelectedItem.Text;
        string a = "";
        if (z == "活潑" && q == "大")
        {
            a = " 企鵝（?） ," + " 綠蜥蜴（グリーントカゲ） ," + " 企鵝(真)（ペンギン本物）  ," + "蜥蜴（とかげ）";
        }
        else if (z == "活潑" && q == "小")
        {
            a = " 粉圓（たぴおか） ," + " 灰塵（ほこり）  ," + " 雜草（ざっそう）";
        }
        else if (z == "安靜" && q == "大")
        {
            a = " 白熊（しろくま） ," + " 貓咪（ねこ） ," + "炸豬排（とんかつ） ," + "鼴鼠（もぐら）";
        }
        else if (z == "安靜" && q == "小")
        {
            a = " 炸蝦尾（えびふらいのしっぽ） ," + " 黑粉圓（ブラックたぴおか） ," + " 幽靈（おばけ） ," + "包袱巾（ふろしき）";
        }
        else
        {
            a = "選啦!!";
        }
        Label13.Text = HttpUtility.HtmlEncode(String.Format("{0}", a));
        MultiView1.ActiveViewIndex = 4;
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 4;
    }

    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        MultiView1.ActiveViewIndex = 5;
    }


    protected void btnsubmit_click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(conStr);
        con.Open();
        string sql = string.Format("INSERT INTO 故事接龍 VALUES((SELECT MAX(接龍編號) + 1 FROM 故事接龍), {0}, N'{1}', N'{2}')",
                                    MasterPage.Global.會員編號, (txtBox1.Text).ToString(), DateTime.Now.ToString());
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.ExecuteNonQuery();
        con.Close();
        txtBox1.Text = "";
        抓接龍留言();
        MultiView1.ActiveViewIndex = 6;
    }

    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        MultiView1.ActiveViewIndex = 6;
        抓接龍留言();
    }
}