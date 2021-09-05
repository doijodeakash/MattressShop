using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["usersession"] == null)
        //{
        //    lbluname.CssClass = "";
        //    Response.Redirect("~/UserLogin.aspx");
        //}
        //else
        //{
        //    lbluname.CssClass = "icon fa fa-user";
        //    lbluname.Text = " Hello, " + Session["usersession"];
        //}       
        if (Session["usersession"] != null)
        {
            lbluname.CssClass = "icon fa fa-user";
            lbluname.Text = " Hello" + ", | " + Session["usersession"] + " |";
        }
    }
}