using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace On_Line_Mattress_Shop
{
    public partial class OrderSummary : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            fillgrid();
        }

        protected void fillgrid()
        {
            try
            {
                //string cname = Session["usersession"].ToString();
                con = new SqlConnection(WebConfigurationManager.ConnectionStrings["testdb"].ConnectionString);
                cmd = new SqlCommand("select bd.bid,bd.pid,bd.pname,bd.quantity,bd.price,bd.tprice,bd.size,bm.cname,bm.tamt,bm.dateofadd " +
                    "from booking_master bm inner join booking_details bd on bm.bid=bd.bid", con);

                //cmd.Parameters.AddWithValue("@cname", cname);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                gvOrderSummary.DataSource = dt;
                gvOrderSummary.DataBind();
                if (gvOrderSummary.Rows.Count <= 0)
                    Response.Write("<script>alert('No records to show')</script>");
            }
            catch (Exception ex)
            {
                //lblmsg.Text = ex.Message;
                Response.Write(ex.Message);
            }
        }

        protected void oStatus_SelectedIndexChanged(object sender, EventArgs ee)
        {
            GridViewDeleteEventArgs e = null;
            RadioButtonList ostatus = (RadioButtonList)gvOrderSummary.Rows[e.RowIndex].FindControl("oStatus");

            con = new SqlConnection(WebConfigurationManager.ConnectionStrings["testdb"].ConnectionString);
            string sql = "update booking_master set orderstatus=@orderstatus where bid=@bid";
            cmd = new SqlCommand(sql, con);
            Label lblbid = (Label)gvOrderSummary.Rows[e.RowIndex].FindControl("lblbid");
            cmd.Parameters.AddWithValue("@bid", lblbid.Text);
            cmd.Parameters.AddWithValue("@orderstatus", ostatus.SelectedItem.Value.ToString());
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            gvOrderSummary.EditIndex = -1; fillgrid();
        }
    }
}