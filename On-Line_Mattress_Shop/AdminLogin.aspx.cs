using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminLogin : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {

        }
        else
        {
            Response.Redirect("~/AdminLogedin.aspx");
        }
    }
    protected void btnadlogin_Click(object sender, EventArgs e)
    {
        try
        {
            con = new SqlConnection(WebConfigurationManager.ConnectionStrings["testdb"].ConnectionString);
            string sql = "select adname,adpass from admintb where adname=@adname and adpass=@adpass";
            cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@adname", txtadid.Text);
            cmd.Parameters.AddWithValue("@adpass", txtadpass.Text);
            con.Open(); SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                if (dr.Read())
                {
                    Session["admin"] = dr[0];
                    //storing username in session variable 
                    lbladloger.Text = "Welcome " + Session["admin"].ToString();

                    Response.Redirect("~/AdminLogedin.aspx");
                    //Response.Write(user);
                }
            }
            else
            {
                //
                lbladloger.Text = "<script> alert('User not found')</script>";
                //USE ONLY if client has enabled scripts //ELSE lblmsg.Text = "User Not found"; 
            }
            dr.Close();
        }
        catch (Exception ex)
        {
            lbladloger.Text = ex.Message.ToString();
        }
        finally
        {
            con.Close();
        }
    }
}