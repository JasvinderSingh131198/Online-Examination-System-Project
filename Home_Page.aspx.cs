using System;
using System.Web;
using System.Data.SqlClient;

public partial class Home_Page : System.Web.UI.Page
{
    public SqlConnection conn;
    public SqlCommand cmd;
    public SqlDataReader sdr;
    public string query;
    public string user_name, password,type;
    public HttpCookie student_cookie;
    public HttpCookie admin_cookie;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\Online_Examination_System\Online_Examination_System\App_Data\My_Database.mdf;Integrated Security=True;Connect Timeout=30");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        conn.Open();
        query = "select * from Login where username='"+TextBox1.Text+"'";
        cmd = new SqlCommand(query, conn);
        sdr = cmd.ExecuteReader();
        if (!sdr.HasRows)
        {
            Label4.Text = "Username does not exists";
        }
        while (sdr.Read())
        {
            
            if (sdr.HasRows)
            {
                user_name = sdr.GetValue(0).ToString();
                password = sdr.GetValue(1).ToString();
                if (password != TextBox2.Text)
                {
                    Label4.Text = "Password does not matching...";
                    break;
                }
                type = sdr.GetValue(2).ToString();

                if (type == "admin")
                {
                    admin_cookie = new HttpCookie("admin_cookie");
                    admin_cookie.Values.Add("username", TextBox1.Text);
                    Response.Cookies.Add(admin_cookie);
                    Response.Redirect("Admin.aspx");
                }
                else if (type == "user")
                {
                    student_cookie = new HttpCookie("student_cookie");
                    student_cookie.Value= TextBox1.Text.ToString();
                    Response.Cookies.Add(student_cookie);
                    Response.Redirect("Student_Login.aspx");
                }
                else
                {
                    Label4.Text = "Invalid Username/Password";
                }
            }
            else
            {
             
                Response.Write("Invalid Username/Password");
                Label4.Text = "Invalid Username/Password";
            }
        }
        conn.Close();
       }

    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
}