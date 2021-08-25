using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Delete_Student : System.Web.UI.Page
{
    public SqlConnection conn;
    public SqlCommand cmd;
    public HttpCookie admin_cookie;
    public string query;
    protected void Page_Load(object sender, EventArgs e)
    {
        admin_cookie = Request.Cookies["admin_cookie"];
        if(admin_cookie==null)
        {
            Response.Redirect("Home_Page.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\Online_Examination_System\Online_Examination_System\App_Data\My_Database.mdf;Integrated Security=True;Connect Timeout=30");
        conn.Open();
        query = "delete from Login where username='" + DropDownList1.Text + "'";
        cmd = new SqlCommand(query, conn);
        cmd.ExecuteNonQuery();
        Response.Redirect("Delete_Student.aspx");
        Label1.Text = "User Deleted Successfully!!!!";
    }
}