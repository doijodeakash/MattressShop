using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class ProductBooking : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["usersession"] == null)
            Response.Redirect("~/UserLogin.aspx");//Check if customer has logged
        if (!IsPostBack)
        {
            fillflmodel();//user defined method
        }
        
    }

    protected void fillflmodel()
    {
        con = new SqlConnection(WebConfigurationManager.ConnectionStrings["testdb"].ConnectionString);
        string str = "select distinct model from product";
        cmd = new SqlCommand(str,con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        ddlproduct.Items.Add("Click To Select Model");
        while(dr.Read())
        {
            ddlproduct.Items.Add(dr[0].ToString());
        }
        con.Close();
    }
    protected void ddlproduct_SelectedIndexChanged(object sender, EventArgs e)
    {
        fillgrid();
    }
    protected void fillgrid()
    {
        con = new SqlConnection(WebConfigurationManager.ConnectionStrings["testdb"].ConnectionString);
        string str = "select * from product where model=@model";
        cmd = new SqlCommand(str, con);
        cmd.Parameters.AddWithValue("@model", ddlproduct.SelectedItem.ToString());
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        dlproduct.DataSource = dt;
        dlproduct.DataBind();
    }
    protected bool checkincart()
{
    con = new SqlConnection(WebConfigurationManager.ConnectionStrings["testdb"].ConnectionString);
    string sql = "select * from productcart where pid=@pid and emailid=@uname";
    cmd = new SqlCommand(sql, con);
    string id = ((Label)dlproduct.SelectedItem.FindControl("lblid")).Text;
    cmd.Parameters.AddWithValue("@pid", Convert.ToInt32(id));
    //cmd.Parameters.AddWithValue("@pid", "5");

    cmd.Parameters.AddWithValue("@uname", Session["usersession"].ToString());
    SqlDataAdapter da = new SqlDataAdapter(cmd);
    DataTable dt = new DataTable();
    da.Fill(dt);
    if (dt.Rows.Count <= 0)
        return true;//is not present in cart
    else
        return false;//is present in cart
    
}
    protected void dlproduct_ItemCommand1(object source, DataListCommandEventArgs e)
    {
        dlproduct.SelectedIndex = e.Item.ItemIndex;
        if (e.CommandName == "select")
        {
            if (checkincart() == true) //user defined method
            {
                con = new SqlConnection(WebConfigurationManager.ConnectionStrings["testdb"].ConnectionString);
                string sql = "insert into productcart(emailid,pid,pname,quantity,price,tprice,dateofadd,imgurl,size)values(@uname,@pid,@pname,@qty,@price_unit,@total_price,@doa,@imgurl,@size)";
                cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@uname", Session["usersession"]);
                cmd.Parameters.AddWithValue("@pid", ((Label)dlproduct.SelectedItem.FindControl("lblid")).Text);
                cmd.Parameters.AddWithValue("@pname", ((Label)dlproduct.SelectedItem.FindControl("lblcomp")).Text);
                //Get the quantity from texbox of quantity
                int q = Convert.ToInt32(((TextBox)dlproduct.SelectedItem.FindControl("txtqty")).Text);
                cmd.Parameters.AddWithValue("@qty", q);
                //Get the price per unit of product
                int p = Convert.ToInt32(((Label)dlproduct.SelectedItem.FindControl("lblprice")).Text);
                cmd.Parameters.AddWithValue("@price_unit", p);
                //Calculate total of the product
                int t = p * q;
                cmd.Parameters.AddWithValue("@total_price", t);
                cmd.Parameters.AddWithValue("@doa", DateTime.Now);
                Image img = (Image)dlproduct.SelectedItem.FindControl("Image1");
                cmd.Parameters.AddWithValue("@imgurl", img.ImageUrl);
                cmd.Parameters.AddWithValue("@size", ((Label)dlproduct.SelectedItem.FindControl("lblsize")).Text);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Product added into cart successfully')</script>");

            }
            else
                Response.Write("<script>alert('Product already present in cart')</script>");
        }
    }
}