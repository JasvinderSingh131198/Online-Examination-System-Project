using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Text;

public partial class Exam : System.Web.UI.Page
{
    public HttpCookie student_cookie;
    public SqlConnection conn;
    public SqlCommand cmd;
    public SqlDataReader sdr;
    public SqlCommand cmd1;
    public SqlCommand ccmd;
    public SqlDataReader csdr;
    public SqlCommand cmd2;
    public SqlDataReader sdr2;
    public string query1;
    public string query;
    public string query2;
    public string user_name;
    public string test_type;
    public int answer;
    public int n = 0;
    public int count;
    public int marks = 0;
    public int total_marks;
    public int question_id;
    public int c;
    protected void Page_Load(object sender, EventArgs e)
    {
        student_cookie = Request.Cookies["student_cookie"];
        if (student_cookie == null)
        {
            Response.Redirect("Home_Page.aspx");
        }
        user_name = student_cookie.Value.ToString();
        test_type = System.Convert.ToString(Request.QueryString["test_type"]);
        count = System.Convert.ToInt16(Request.QueryString["count"]);
        marks = System.Convert.ToInt16(Request.QueryString["marks"]);
        if(count==0)
        {
            count = 1;
        }
        time.Text = DateTime.Now.ToString();
        conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\Online_Examination_System\Online_Examination_System\App_Data\My_Database.mdf;Integrated Security=True;Connect Timeout=30");
        conn.Open();
        query = "select * from Question where set_type='"+test_type+"'";
        cmd = new SqlCommand(query, conn);
        sdr = cmd.ExecuteReader();
        while(sdr.Read())
        {
            n = n + 1;
        }
        conn.Close();
        if (count <= n)
        {
            Message.Text = count + " of " + n;
        }
        else
        {
            Message.Text = "This was the Last Question of Exam";
        }
        conn.Open();
        query1 = "select * from Question where set_type='"+test_type+"'order by question_id";
        cmd2 = new System.Data.SqlClient.SqlCommand(query1, conn);
        sdr2 = cmd2.ExecuteReader();
        c = 1;
        while(sdr2.Read())
        {
            if (c != count)
            {
                c = c + 1;
            }
            else
            {
                question_id = Convert.ToInt16(sdr2.GetValue(0));
                c = c + 1;
            }
        }
        conn.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        count = count - 1;
        Response.Redirect("Exam.aspx?test_type= " + test_type + "&count= " + count);
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        conn.Close();
        if(count < n)
        {
            if(RadioButton1.Checked==true)
            {
                answer = 1;
            }
            if (RadioButton2.Checked == true)
            {
                answer = 2;
            }
            if (RadioButton3.Checked == true)
            {
                answer = 3;
            }
            if (RadioButton4.Checked == true)
            {
                answer = 4;
            }
            conn.Open();
            ccmd = new SqlCommand("select * from Question where question_id=" + question_id + " and answer=" +answer,conn);
            csdr = ccmd.ExecuteReader();
            if (csdr.HasRows)
            {
                marks = marks + 1;
            }
            conn.Close();
            count = count + 1;
            Response.Redirect("Exam.aspx?test_type=" + test_type + "&count=" + count + "&marks=" + marks);
        }
        else
        {
            Message.Text = "This was the Last Question of Exam";
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        conn.Close();
        conn.Open();
        total_marks = n;
        string date = DateTime.Now.ToString();
        query2 = "insert into Results values('" + user_name + "','" + date + "','" + test_type + "'," + marks + "," + total_marks + ")";
        cmd1 = new SqlCommand(query2, conn);
        cmd1.ExecuteNonQuery();
        Message.Text = "Wish You All The Best For Your Results!!!!!" +
            " Exam Successfully Submitted!!!!";
        conn.Close();
        //Response.Redirect("Student_Logout.aspx");
    }
}