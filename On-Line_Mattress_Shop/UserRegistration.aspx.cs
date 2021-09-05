using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class UserRegistration : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnureg_Click(object sender, EventArgs e)
    {
        try
        {
            con = new SqlConnection(WebConfigurationManager.ConnectionStrings["testdb"].ConnectionString);
            cmd = new SqlCommand("insert into customer (emailid,cname,address,contact,gender,city,pass)values(@email,@cname,@address,@contact,@gender,@city,@pass)", con);
            cmd.Parameters.AddWithValue("@email", txtemailid.Text);
            cmd.Parameters.AddWithValue("@cname", txtname.Text);
            cmd.Parameters.AddWithValue("@address", txtadd.Text);
            cmd.Parameters.AddWithValue("@contact", txtucont.Text);
            cmd.Parameters.AddWithValue("@city", txtucity.Text);
            cmd.Parameters.AddWithValue("@pass", txtupass.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            lblureger.Text = "Registration Successful";
            Response.Write("<script language=java>alert(Registration successful.)");
        }
        catch (Exception ex)
        {
            lblureger.Text = ex.Message;
        }
        finally
        {
            con.Close();
        }
                
    }
}