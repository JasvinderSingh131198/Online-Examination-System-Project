using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Set_Question_Paper : System.Web.UI.Page
{
    public HttpCookie admin_cookie;
    public SqlConnection conn;
    public SqlCommand cmd;
    public SqlCommand cmd1;
    public SqlDataReader sdr;
    public SqlCommand cmd2;
    public SqlDataReader sdr1;
    public string query;
    public string n_query;
    public string test;
    public int question_id;
    public int answer;
    public int flag = 1;
    protected void Page_Load(object sender, EventArgs e)
    {
        admin_cookie = Request.Cookies["admin_cookie"];
        if (admin_cookie == null)
        {
            Response.Redirect("Home_Page.aspx");
        }
        conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\Online_Examination_System\Online_Examination_System\App_Data\My_Database.mdf;Integrated Security=True;Connect Timeout=30");
        Message7.Text = Request.QueryString["Message"];
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Message1.Text = "";
        Message2.Text = "";
        Message3.Text = "";
        Message4.Text = "";
        Message5.Text = "";
        Message6.Text = "";
        Message7.Text = "";
        if(RadioButton1.Checked)
        {
            answer = 1;
        }
        if(RadioButton2.Checked)
        {
            answer = 2;
        }
        if(RadioButton3.Checked)
        {
            answer = 3;
        }
        if(RadioButton4.Checked)
        {
            answer = 4;
        }
        if(DropDownList1.Visible)
        {
            test = DropDownList1.Text;
        }
        else
        {
            if(TextBox1.Text=="")
            {
                Message1.Text = "Enter the test name";
                flag = 0;
            }
            else
            {
                conn.Open();
                n_query = "select * from Question where set_type='" + TextBox1.Text + "'";
                cmd1 = new SqlCommand(n_query, conn);
                sdr = cmd1.ExecuteReader();
                if(sdr.HasRows)
                {
                    Message1.Text = "Test Name Already Exists";
                    flag = 0;
                }
                test = TextBox1.Text;
                conn.Close();
            }
        }
        if(TextBox2.Text==""||TextBox2.Text==" ")
        {
            Message2.Text = "Please Enter the Question";
            flag = 0;
        }
        if(TextBox3.Text==""||TextBox3.Text==" ")
        {
            Message3.Text = "Please Enter Option 1";
            flag = 0;
        }
        if(TextBox4.Text==""||TextBox4.Text==" ")
        {
            Message4.Text = "Please Enter Option 2";
            flag = 0;
        }
        if(TextBox5.Text==""||TextBox5.Text==" ")
        {
            Message5.Text = "Please Enter Option 3";
            flag = 0;
        }
        if(TextBox6.Text==""||TextBox6.Text==" ")
        {
            Message6.Text = "Please Enter Option 4";
            flag = 0;
        }
        if(flag!=0)
        {
            conn.Open();
            cmd2 = new SqlCommand("select Max(question_id) from Question", conn);
            sdr1 = cmd2.ExecuteReader();
            sdr1.Read();
            if(sdr1.IsDBNull(0))
            {
                question_id = 1;
            }
            else
            {
                question_id = Convert.ToInt16(sdr1.GetValue(0)) + 1;
            }
            conn.Close();
            conn.Open();
            query = "insert into Question values(" + question_id + ",'" + TextBox2.Text + "','"+test+"','"+TextBox3.Text+"','"+TextBox4.Text+"','"+TextBox5.Text+"','"+TextBox6.Text+"',"+answer+")";
            cmd = new SqlCommand(query, conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            Message7.Text = "Question Submitted!!!!";
            Response.Redirect("Set_Question_Paper.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if(DropDownList1.Visible)
        {
            TextBox1.Visible = true;
            DropDownList1.Visible = false;
            Button1.Text = "OLD TEST";
        }
        else
        {
            TextBox1.Visible = false;
            DropDownList1.Visible = true;
            Button1.Text = "NEW TEST";
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("View_Question_Papers.aspx");
    }
}