using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class View_Question_Papers : System.Web.UI.Page
{
    public SqlConnection conn;
    public SqlCommand cmd;
    public SqlDataReader sdr;
    public string query;
    public string set_type;
    public int answer;
    public HttpCookie admin_cookie;
    protected void Page_Load(object sender, EventArgs e)
    {
        admin_cookie = Request.Cookies["admin_cookie"];
        if (admin_cookie == null)
        {
            Response.Redirect("Home_Page.aspx");
        }
        conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\Online_Examination_System\Online_Examination_System\App_Data\My_Database.mdf;Integrated Security=True;Connect Timeout=30");
        conn.Open();
        set_type = System.Convert.ToString(Request.QueryString["set_type"]);
        query = "select * from Question ";
        cmd = new SqlCommand(query, conn);
        sdr = cmd.ExecuteReader();
        GridView1.DataSource = sdr;
        GridView1.DataBind();

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Set_Question_Paper.aspx");
    }
}
