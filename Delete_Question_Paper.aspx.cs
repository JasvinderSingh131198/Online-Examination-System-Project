using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Delete_Question_Paper : System.Web.UI.Page
{
    public SqlConnection conn;
    public SqlCommand cmd;
    public SqlDataReader sdr;
    public HttpCookie admin_cookie;
    public string query;
    protected void Page_Load(object sender, EventArgs e)
    {
        admin_cookie = Request.Cookies["admin_cookie"];
        if(admin_cookie==null)
        {
            Response.Redirect("Home_Page.aspx");
        }
        conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\Online_Examination_System\Online_Examination_System\App_Data\My_Database.mdf;Integrated Security=True;Connect Timeout=30");
        conn.Open();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        conn.Close();
        conn.Open();
        query = "delete from Question where set_type='" + DropDownList1.SelectedValue + "'";
        cmd = new SqlCommand(query, conn);
        cmd.ExecuteNonQuery();
        Response.Redirect("Delete_Question_Paper.aspx");
    }
}