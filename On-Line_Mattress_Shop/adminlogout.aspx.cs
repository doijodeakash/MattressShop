using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminlogout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Remove("admin");
        if (Session["admin"] == null)
        {
            Response.Redirect("~/AdminLogin.aspx");
        }
    }
}