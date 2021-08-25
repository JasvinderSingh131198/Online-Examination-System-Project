using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class View_Report : System.Web.UI.Page
{
    public HttpCookie admin_cookie;
    public SqlConnection conn;
    public SqlCommand cmd;
    public SqlDataReader sdr;
    public string query;
    protected void Page_Load(object sender, EventArgs e)
    {
        admin_cookie = Request.Cookies["admin_cookie"];
        if (admin_cookie == null)
        {
            Response.Redirect("Home_Page.aspx");
        }
        conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\Online_Examination_System\Online_Examination_System\App_Data\My_Database.mdf;Integrated Security=True;Connect Timeout=30");
        conn.Open();
        query = "select * from Results";
        cmd = new SqlCommand(query, conn);
        sdr = cmd.ExecuteReader();
    }
}