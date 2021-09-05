using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class ProductCart : System.Web.UI.Page
{
    public static int ubid;
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        if (Session["usersession"] == null)//'username' is the session variable containing customer email
            Response.Redirect("~/UserLogin.aspx");
        if (!IsPostBack)
        {
            fillgrid();
            calctotal();
        }
    }
    protected void fillgrid()
    {
        try
        {
            string cname = Session["usersession"].ToString();
            con = new SqlConnection(WebConfigurationManager.ConnectionStrings["testdb"].ConnectionString);
            cmd = new SqlCommand("select * from productcart where emailid=@cname", con);

            cmd.Parameters.AddWithValue("@cname", cname);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            gvcart.DataSource = dt;
            gvcart.DataBind();
            if (gvcart.Rows.Count <= 0)
                Response.Write("<script>alert('No records to show')</script>");
        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message;
        }
    }
    protected void calctotal()
    {
        double total = 0;
        double price_unit, qty, price;
        foreach (GridViewRow gvr in gvcart.Rows)
        {
            Label tb = (Label)gvr.Cells[5].FindControl("Label6");
            //label in gridview containing price_unit 
            Label tb1 = (Label)gvr.Cells[3].FindControl("Label4");
            //label in gridview containing qty 
            double.TryParse(tb.Text.Trim(), out price_unit);
            double.TryParse(tb1.Text.Trim(), out qty);
            price = price_unit * qty; total = total + price; 
        }
        lbltamt.Text = total.ToString();
        //Display the total amount in label below gridview 
    }
    protected void gvcart_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        con = new SqlConnection(WebConfigurationManager.ConnectionStrings["testdb"].ConnectionString);
        string sql = "delete from productcart where id=@id and emailid=@uname";
        cmd = new SqlCommand(sql, con);
        Label lbldeleteID = (Label)gvcart.Rows[e.RowIndex].FindControl("cartid");
        //Label containing PID
        cmd.Parameters.AddWithValue("@id", lbldeleteID.Text);
        cmd.Parameters.AddWithValue("@uname", Session["usersession"]);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        fillgrid();
        calctotal();
    }
    protected void gvcart_RowEditing(object sender, GridViewEditEventArgs e)
    {
        gvcart.EditIndex = e.NewEditIndex; fillgrid();
    }
    protected void gvcart_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        con = new SqlConnection(WebConfigurationManager.ConnectionStrings["testdb"].ConnectionString);
        string sql = "update productcart set quantity=@qty,tprice=@total_price where pid=@pid and emailid=@uname";
        cmd = new SqlCommand(sql, con);
        TextBox txtqty = (TextBox)gvcart.Rows[e.RowIndex].FindControl("TextBox4");
        //Search for textbox containing quantity in HTML of gridview 
        cmd.Parameters.AddWithValue("@qty", txtqty.Text);
        TextBox txtprice_unit = (TextBox)gvcart.Rows[e.RowIndex].FindControl("TextBox6");
        //Textbox containing price_unit
        int tot_price = Convert.ToInt32(txtqty.Text) * Convert.ToInt32(txtprice_unit.Text);
        cmd.Parameters.AddWithValue("@total_price", tot_price);
        TextBox txtID = (TextBox)gvcart.Rows[e.RowIndex].FindControl("TextBox2");
        cmd.Parameters.AddWithValue("@pid", txtID.Text);
        cmd.Parameters.AddWithValue("@uname", Session["usersession"]);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        gvcart.EditIndex = -1; fillgrid();
        calctotal();
    }
    protected void btncheckout_Click(object sender, EventArgs e)
    {
        //Create a booking ID
        con = new SqlConnection(WebConfigurationManager.ConnectionStrings["testdb"].ConnectionString);
        string sql = "select max(bid)+1 from booking_master";
        cmd = new SqlCommand(sql, con);
        con.Open();
        object obj = cmd.ExecuteScalar();
        if (obj == DBNull.Value) obj = 1;
        int bid = Convert.ToInt32(obj);
        con.Close();
        //Insert a record in booking master table
        sql = "insert into booking_master values(@bno,@uname,@totamt,@dob,@payt,@crno,@cvv,@exdt,@os)";
        cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@bno", bid);
        cmd.Parameters.AddWithValue("@uname", Session["usersession"]);
        cmd.Parameters.AddWithValue("@totamt", lbltamt.Text);
        cmd.Parameters.AddWithValue("@dob", DateTime.Now);
        cmd.Parameters.AddWithValue("@payt",RadioButtonList1.SelectedItem.ToString());
        if (RadioButtonList1.SelectedIndex == 0)
        {
            cmd.Parameters.AddWithValue("@crno",DBNull.Value);
            cmd.Parameters.AddWithValue("@cvv", DBNull.Value);
            cmd.Parameters.AddWithValue("@exdt", DBNull.Value);
        }
        else
        {
            cmd.Parameters.AddWithValue("@crno", txtcrdno.Text);
            cmd.Parameters.AddWithValue("@cvv", txtcvv.Text);
            cmd.Parameters.AddWithValue("@exdt", txtexdt.Text);
        }
        cmd.Parameters.AddWithValue("@os", "OP");
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        //Copy all records from product cart into booking details table
        sql = "select * from productcart where emailid=@uname";
        cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@uname", Session["usersession"]);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        
        for (int k = 0; k < dt.Rows.Count; k++)
        {
            sql = "insert into booking_details values (@bid,@pid,@pname,@qty,@price_unit,@total_price,@size)";
            cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@bid", bid);
            cmd.Parameters.AddWithValue("@pid", dt.Rows[k][2]);
            cmd.Parameters.AddWithValue("@pname", dt.Rows[k][3]);
            cmd.Parameters.AddWithValue("@qty", dt.Rows[k][4]);
            cmd.Parameters.AddWithValue("@price_unit", dt.Rows[k][5]);
            cmd.Parameters.AddWithValue("@total_price", dt.Rows[k][6]);
            cmd.Parameters.AddWithValue("@size", dt.Rows[k][9]);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        //Empty the product cart table 
        sql = "delete from productcart where emailid=@uname"; 
        cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@uname", Session["usersession"]);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        //Response.Redirect("Successfull.aspx");
        ubid = bid;
        Session["ubid"] = ubid;
        Response.Redirect("~/Receipt.aspx");
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedIndex == 1 || RadioButtonList1.SelectedIndex == 2)
        {
            Panel1.Visible = true;
        }
    }
}