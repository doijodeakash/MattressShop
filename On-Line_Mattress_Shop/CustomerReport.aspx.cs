using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
public partial class CustomerReport : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        fillgrid();
    }
    protected void fillgrid()
    {
        con = new SqlConnection(WebConfigurationManager.ConnectionStrings["testdb"].ConnectionString);
        string sql = "select * from customer";
        cmd= new SqlCommand(sql,con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        gvcst.DataSource = dt;
        gvcst.DataBind();
        if(gvcst.Rows.Count<=0)
        {
            Response.Write("<script>alert('No customer records found')</script>");
        }

    }

    protected void btnshowcity_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(WebConfigurationManager.ConnectionStrings["testdb"].ConnectionString);
        cmd = new SqlCommand("select * from customer where cid=@city",con);
        cmd.Parameters.AddWithValue("@city",Convert.ToInt32(txtcity.Text));

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        gvcst.DataSource = dt;
        gvcst.DataBind();
        if(dt.Rows.Count<=0)
            Response.Write("<script>alert('No such Customer ID found')</script>");
    }

    protected void gvcst_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvcst.PageIndex = e.NewPageIndex;
        gvcst.DataBind();
        fillgrid();
    }
}