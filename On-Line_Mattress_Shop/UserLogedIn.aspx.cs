using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserLogedIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["usersession"] ==null)
        {
            Response.Redirect("~/UserLogin.aspx");
        }
        else
        {
            lbluser.Text = "Welcome" + Session["usersession"].ToString();
        }
    }
}