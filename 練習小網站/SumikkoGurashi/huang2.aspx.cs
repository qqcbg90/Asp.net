using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _0515上傳檔案 : System.Web.UI.Page
{
    string conStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\qqcbg\OneDrive\桌面\程式設計\ASP.NET\ASP.NET_整合版\練習小網站\App_Data\Database.mdf;Integrated Security=True";

    private void QD()
    {
        SqlConnection con = new SqlConnection(conStr);
        con.Open();

        string sql = @"SELECT 留言板.num,留言板.name,留言板.email,留言板.comment,留言板.love
                    FROM 留言板 
                    ORDER BY 留言板.num DESC";
        SqlCommand cmd = new SqlCommand(sql, con);

        con.Close(); 
       

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        QD();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //string query = "insert into 留言板(name,email,comment,love) values(N'" +TextBox1.Text + "','" + TextBox2.Text + "','" +
        //    TextBox3.Text + "','" + ComboBox1.Text + "')";


        SqlConnection con = new SqlConnection(conStr);
        con.Open();

        string sql = string.Format("INSERT INTO 留言板 VALUES((SELECT MAX(num) + 1 FROM 留言板), N'{0}', '{1}', N'{2}', N'{3}',N'{4}')", TextBox1.Text, TextBox2.Text, TextBox3.Text, ComboBox1.Text, TextBox4.Text);
        SqlCommand cmd = new SqlCommand(sql,con);
        //cmd.CommandText = query;
        //cmd.Connection = con;
        cmd.ExecuteNonQuery();
        con.Close();
        QD();
        Label2.Text = "留言成功";
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        DataList1.DataBind();
    }

    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]

    public static String GetData()
    {
        DateTime myDate = DateTime.Now;
        string myDateString = myDate.ToString("yyyy年MM月dd日 HH:mm");
        DateTime dt = Convert.ToDateTime(myDateString);
        return myDateString;
        //return dt.ToLongTimeString();
        //return DateTime.Now.ToLongDateString();
    }

}
