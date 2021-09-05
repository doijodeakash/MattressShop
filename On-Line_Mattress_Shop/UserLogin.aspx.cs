using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CustomerLogin : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["usersession"] == null)
        {

        }
        else
        {
            Response.Redirect("~/UserLogedin.aspx");
        }
    }
    protected void btnulogin_Click(object sender, EventArgs e)
    {
        try
        {
            con = new SqlConnection(WebConfigurationManager.ConnectionStrings["testdb"].ConnectionString);
            string sql = "select cname,emailid,pass from customer where emailid=@name and pass=@passwd";
            cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@name", txtuid.Text);
            cmd.Parameters.AddWithValue("@passwd", txtupass.Text);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                if (dr.Read())
                {
                    Session["usersession"] = dr[1];
                    //storing username in session variable 
                    lbluloger.Text = "Welcome " + Session["usersession"].ToString();
                    Response.Redirect("~/UserLogedIn.aspx");
                }
            }
            else
            {
                //
                lbluloger.Text = "<script> alert('User not found')</script>";
                //USE ONLY if client has enabled scripts //ELSE lblmsg.Text = "User Not found"; 
            }
            dr.Close();
        }
        catch (Exception ex)
        {
            lbluloger.Text = ex.Message.ToString();
        }
        finally
        {
            con.Close();
        }
    }
    protected void txtupass_TextChanged(object sender, EventArgs e)
    {

    }
}