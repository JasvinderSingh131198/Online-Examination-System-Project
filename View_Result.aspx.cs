using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class View_Result : System.Web.UI.Page
{
    public HttpCookie student_cookie;
    public SqlConnection conn;
    public SqlCommand cmd;
    public SqlDataReader sdr;
    public string query;
    protected void Page_Load(object sender, EventArgs e)
    {
        student_cookie = Request.Cookies["student_cookie"];
        if (student_cookie == null)
        {
            Response.Redirect("Home_Page.aspx");
        }
        Label1.Text = Request.Cookies["student_cookie"].Value;
        conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\Online_Examination_System\Online_Examination_System\App_Data\My_Database.mdf;Integrated Security=True;Connect Timeout=30");
        conn.Open();
        query = "select * from Results where username='" +Label1.Text+"'";
        cmd = new SqlCommand(query, conn);
        sdr = cmd.ExecuteReader();
    }
}