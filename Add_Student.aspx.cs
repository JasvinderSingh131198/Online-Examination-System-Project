using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Add_Student : System.Web.UI.Page
{
    public SqlConnection conn;
    public SqlCommand cmd;
    public SqlDataReader sdr;
    public string query1;
    public string query2;
    public HttpCookie admin_cookie;
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
        query1 = "select * from Login where username='" + TextBox1.Text + "'";
        cmd = new SqlCommand(query1, conn);
        sdr = cmd.ExecuteReader();
        if (sdr.HasRows)
        {
            Message.Text = "Username Already Exists";
        }
        else 
        {
            conn.Close();
            conn.Open();
            query2 = "insert into Login values('" + TextBox1.Text + "','" + TextBox2.Text + "','user')";
            cmd = new SqlCommand(query2, conn);
            cmd.ExecuteNonQuery();
            Message.Text = "Username Added Successfully!!!!!";
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}
