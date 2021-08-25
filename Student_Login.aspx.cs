using System;
using System.Web;

public partial class Student_Login : System.Web.UI.Page
{
    public HttpCookie student_cookie;
    protected void Page_Load(object sender, EventArgs e)
    {
        student_cookie = Request.Cookies["student_cookie"];
        if(student_cookie==null)
        {
            Response.Redirect("Home_Page.aspx");
        }
        Label2.Text = Request.Cookies["student_cookie"].Value;
    }

   protected void Button1_Click(object sender,EventArgs e)
    {
        Response.Redirect("Exam.aspx?test_type="+DropDownList1.SelectedValue);
    }
}