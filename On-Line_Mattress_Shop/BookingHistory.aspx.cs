using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class BookingHistory : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(WebConfigurationManager.ConnectionStrings["testdb"].ConnectionString);
        string sql = "select bd.bid,bd.pid,bd.pname,bd.quantity,bd.price,bd.tprice,bd.size,bm.cname from [demo].[dbo].[booking_master] bm inner join [demo].[dbo].[booking_details] bd on bd.bid=bm.bid and bm.cname=@cname";
        cmd = new SqlCommand(sql,con);
        cmd.Parameters.AddWithValue("@cname",Session["usersession"].ToString());
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource=dt;
        GridView1.DataBind();        
    }
}