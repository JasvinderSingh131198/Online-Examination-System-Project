using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_Logout : System.Web.UI.Page
{
    public HttpCookie student_cookie;
    protected void Page_Load(object sender, EventArgs e)
    {
        student_cookie = Request.Cookies["student_cookie"];
        student_cookie.Expires = DateTime.Now.AddDays(-1);
        Response.Redirect("Home_Page.aspx");
    }
}