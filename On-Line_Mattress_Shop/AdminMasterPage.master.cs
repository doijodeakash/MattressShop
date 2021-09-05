using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class AdminMasterPage : System.Web.UI.MasterPage
{    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            lbladname.CssClass = "";
            Response.Redirect("~/AdminLogin.aspx");
        }
        else
        {
            lbladname.CssClass = "icon fa fa-user";
            lbladname.Text = " Hey, " + Session["admin"];
        }
    }
    
}
