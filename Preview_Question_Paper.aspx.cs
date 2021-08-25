using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Preview_Question_Paper : System.Web.UI.Page
{
    public SqlConnection conn;
    public SqlCommand cmd;
    public SqlDataReader sdr;
    public string query;
    public string set_type;
    public int answer;
    HttpCookie admin_cookie;
    protected void Page_Load(object sender, EventArgs e)
    {
        admin_cookie = Request.Cookies["admin_cookie"];
        if (admin_cookie == null)
        {
            Response.Redirect("Home_Page.aspx");
        }
        conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\ADMIN\source\repos\Online_Examination_System\Online_Examination_System\App_Data\My_Database.mdf;Integrated Security=True");
        conn.Open();
        set_type = System.Convert.ToString(Request.QueryString["set_type"]);
        HiddenField1.Value = DropDownList1.SelectedValue;
        query = "select * from Question where set_type='" + HiddenField1.Value + "'order by question_id";
        cmd = new SqlCommand(query, conn);
        sdr = cmd.ExecuteReader();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Set_Question_Paper.aspx");
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
           
    }
}