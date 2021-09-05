using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using Microsoft.Reporting.WebForms;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
public partial class receipt : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    public string status = "OR";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ubid"] != null &&Session["usersession"] !=null)
        {
            string cname = Session["usersession"].ToString();
            int ubid = Convert.ToInt32(Session["ubid"].ToString());
            if (!IsPostBack)
            {
                SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["testdb"].ConnectionString);
                //string sql = "select bd.bid,bd.pid,bd.pname,bd.quantity,bd.price,bd.tprice,bd.size,bm.cname,bm.tamt,bm.dateofadd from booking_master bm inner join booking_details bd on bm.bid=@ubid where bm.cname="+cname+"";
                string sql = "select bd.bid,bd.pid,bd.pname,bd.quantity,bd.price,bd.tprice,bd.size,bm.cname,bm.tamt,bm.dateofadd from booking_master bm inner join booking_details bd on bm.bid=@ubid";
                sql = "select bd.bid,bd.pid,bd.pname,bd.quantity,bd.price,bd.tprice,bd.size," +
                    "bm.cname,bm.tamt,bm.dateofadd from booking_master bm inner join booking_details " +
                    "bd on bm.bid=bd.bid where bm.bid=@ubid and bm.cname = '" + cname + "'";

                cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@ubid", Session["ubid"]);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    lblbid0.Text = Session["ubid"].ToString();
                    lblpid0.Text = dr[1].ToString();
                    lblpname0.Text = dr[2].ToString();
                    lblcname0.Text = dr[7].ToString();
                    lblprice0.Text = dr[4].ToString();
                    lblqty0.Text = dr[3].ToString();
                    lblsize0.Text = dr[6].ToString();
                    lbltprice0.Text = dr[5].ToString();
                    lbldate0.Text = dr[9].ToString();
                    //status = dr[10].ToString();
                }
                con.Close();
            }
        }
        else
        {
            Response.Redirect("~/Home.aspx");
        }
    }
}