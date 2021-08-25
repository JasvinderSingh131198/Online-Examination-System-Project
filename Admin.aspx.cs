using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin : System.Web.UI.Page
{
    public HttpCookie admin_cookie;
    protected void Page_Load(object sender, EventArgs e)
    {
        admin_cookie = Request.Cookies["admin_cookie"];
        if (admin_cookie == null)
        {
            Response.Redirect("Home_Page.aspx");
        }
    }
}