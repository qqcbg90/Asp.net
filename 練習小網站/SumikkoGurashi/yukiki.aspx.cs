using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class SumikkoGurashi_yukiki : System.Web.UI.Page
{
    // 資料庫路徑設定
    string conStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\ASP.NET_整合版\練習小網站\App_Data\Database.mdf;Integrated Security=True";
    string[] contentTypes = new string[] { ".jpg", ".jpeg", ".png", ".bmp", ".gif" };

    protected void 存圖片路徑()
    {
        SqlConnection con = new SqlConnection(conStr);
        con.Open();
        string sql = string.Format("update 會員 set 會員頭貼 = N'{0}' where 會員編號 = '{1}'", MasterPage.Global.頭貼路徑, MasterPage.Global.會員編號);
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.ExecuteNonQuery();
        con.Close();
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        Image1.ImageUrl = MasterPage.Global.頭貼路徑;
    }

    protected void AjaxFileUpload1_UploadComplete(object sender, AjaxControlToolkit.AjaxFileUploadEventArgs e)
    {
        if (this.contentTypes.Contains(e.ContentType))
        {
            if (e.FileSize <= 1024 * 1024 * 4)
            {
                string filePath = string.Concat("~/上傳的檔案/", ("P" + MasterPage.Global.會員編號 + e.ContentType));
                this.AjaxFileUpload1.SaveAs(MapPath(filePath));
                MasterPage.Global.頭貼路徑 = "~/上傳的檔案/" + ("P" + MasterPage.Global.會員編號 + e.ContentType);
                存圖片路徑();
            }
            else
            {
                e.PostedUrl = "Images/fileTooBig.gif";
            }
        }
    }
}