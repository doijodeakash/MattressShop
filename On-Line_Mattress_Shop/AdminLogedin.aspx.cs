using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class AdminLogedin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["admin"]==null)
        {
            Response.Redirect("~/AdminLogin.aspx");
        }
        else
        {
            lbluser.Text = "Hey, " + Session["admin"];
        }
    }
}