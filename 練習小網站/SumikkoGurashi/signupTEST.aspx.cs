using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;

public partial class SumikkoGurashi_signupTEST : System.Web.UI.Page
{
    // 資料庫路徑設定
    string conStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\qqcbg\OneDrive\桌面\程式設計\ASP.NET\ASP.NET_整合版\練習小網站\App_Data\Database.mdf;Integrated Security=True";

    // 可以跨axpx使用這些變數
    public class Global2
    {
        public static int 隨機驗證碼 = 0;
        public static string 帳號, 密碼, 暱稱, 信箱, 生日;
    }
    Random rnd;

    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;  // 驗證的控制項的設定
        MultiView1.ActiveViewIndex = 0;
        //
        CalendarExtender1.EndDate = DateTime.Now.Date;
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

    // 自動發送email
    public void sendGmail(string 收件人, int 驗證碼, string 暱稱)
    {
        MailMessage mail = new MailMessage();
        //前面是發信email後面是顯示的名稱
        mail.From = new MailAddress("qqcbg90@gmail.com", "練習小網站");
        //收信者email
        mail.To.Add(收件人);
        //設定優先權
        mail.Priority = MailPriority.Normal;
        //標題
        mail.Subject = "練習小網站の註冊驗證碼";
        //內容
        mail.Body = "<h2>" + 暱稱 + "您好！\r\n您的驗證碼為：" + 驗證碼 + "</h2>";
        //內容使用html
        mail.IsBodyHtml = true;
        //設定gmail的smtp (這是google的)
        SmtpClient MySmtp = new SmtpClient("smtp.gmail.com", 587);
        //您在gmail的帳號密碼
        MySmtp.Credentials = new System.Net.NetworkCredential("qqcbg90@gmail.com", "Qazwsx3631");
        //開啟ssl
        MySmtp.EnableSsl = true;
        //發送郵件
        MySmtp.Send(mail);
        //放掉宣告出來的MySmtp
        MySmtp = null;
        //放掉宣告出來的mail
        mail.Dispose();
    }

    // 檢查資料 & 發送email
    protected void Button1_Click(object sender, EventArgs e)
    {
        // 檢查帳號密碼
        if (TextBox1.Text.Length < 5)
        {
            Label2.Text = "帳號不到5個字唷_(´ཀ`」 ∠)_ ";
            return;
        }
        else if (TextBox2.Text.Length < 5)
        {
            Label2.Text = "密碼不到5個字唷_(´ཀ`」 ∠)_ ";
            return;
        }
        //
        conn = new SqlConnection(conStr);
        conn.Open();
        string sqlcmd2 = "SELECT 會員.會員帳號 FROM 會員 WHERE((會員.會員帳號) = '{0}')";
        sqlcmd2 = string.Format(sqlcmd2, TextBox1.Text);
        cmd = new SqlCommand(sqlcmd2, conn);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            string ID = dr.GetString(0);
            if (ID.Length != 0)
            {
                Label2.Text = "此帳號註冊過囉！";
                return;
            }
        }
        dr.Close();
        cmd.Dispose();
        conn.Close();
        conn.Dispose();
        //
        conn = new SqlConnection(conStr);
        conn.Open();
        sqlcmd2 = "SELECT 會員.會員信箱 FROM 會員 WHERE((會員.會員信箱) = '{0}')";
        sqlcmd2 = string.Format(sqlcmd2, TextBox4.Text);
        cmd = new SqlCommand(sqlcmd2, conn);
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            string Mail = dr.GetString(0);
            if (Mail.Length != 0)
            {
                Label2.Text = "此信箱已註冊過囉！";
                return;
            }
        }
        dr.Close();
        cmd.Dispose();
        conn.Close();
        conn.Dispose();
        //
        Global2.帳號 = TextBox1.Text;
        Global2.密碼 = TextBox2.Text;
        Global2.暱稱 = TextBox3.Text;
        Global2.信箱 = TextBox4.Text;
        //TextBox6.Text = CalendarExtender1.SelectedDate.ToString();
        //DateTime dateTime = new DateTime();
        //dateTime = CalendarExtender1.SelectedDate;
        Global2.生日 = TextBox7.Text.ToString();
        MultiView1.ActiveViewIndex = 1;
        Label9.Text = "已將驗證碼寄送至" + Global2.信箱;
        rnd = new Random((int)DateTime.Now.Ticks);
        Global2.隨機驗證碼 = rnd.Next(100000, 999999);
        sendGmail(Global2.信箱, Global2.隨機驗證碼, Global2.暱稱);
    }
    // 檢查驗證碼 & 儲存資料
    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        if (TextBox5.Text=="")
        {
            Label11.Text = "請輸入驗證碼";
            return;
        }
        if (TextBox5.Text== Global2.隨機驗證碼.ToString())
        {
            long 會員編號 = getMaxNum("會員編號", "會員");
            會員編號++;
            string sqlcmd = "Insert Into 會員 Values({0}, '{1}', '{2}', '{3}', '{4}', '{5}', N'~/上傳的檔案/smallflower_pblue.png')";
            sqlcmd = string.Format(sqlcmd, 會員編號, Global2.帳號, Global2.密碼, Global2.暱稱, Global2.信箱, Global2.生日.ToString());
            if (TryDoSql(sqlcmd))
            {
                MasterPage.Global.登入 = true;
                MasterPage.Global.暱稱 = Global2.暱稱;
                MasterPage.Global.會員編號 = (int)會員編號;
                Response.Write("<script>alert('註冊成功！將為您導向首頁');location.href='Home.aspx';</script>");
            }
            else
                Label11.Text = "註冊失敗！";
        }
        else
        {
            Label11.Text = "驗證碼錯誤";
            TextBox5.Text = "";
            TextBox5.Focus();
        }
    }
    // 重填資料
    protected void Button3_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }

    //職業
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        PopupControlExtender1.Commit(RadioButtonList1.SelectedValue);
    }
}