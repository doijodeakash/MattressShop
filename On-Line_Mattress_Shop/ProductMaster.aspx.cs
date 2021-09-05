using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class ProductMaster : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) 
            fillproduct();
    }
    protected void btnup_Click(object sender, EventArgs e)
    {
        if(FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("/productimages/") + FileUpload1.FileName);
            Image1.ImageUrl = "/productimages/" + FileUpload1.FileName;
        }
        else
        {
            lblfileer.Text = "Please upload file.";
        }
    }
    protected void gvproduct_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            if (e.CommandName == "select")
            {
                int i = Convert.ToInt32(e.CommandArgument);
                txtpid.Text = gvproduct.Rows[i].Cells[0].Text;
                txtcompname.Text = gvproduct.Rows[i].Cells[1].Text;
                ddlmname.Text = gvproduct.Rows[i].Cells[2].Text;
                ddlpsizes.Items.Add(gvproduct.Rows[i].Cells[3].Text);
                txtpqty.Text = gvproduct.Rows[i].Cells[4].Text;
                Image img = (Image)gvproduct.Rows[i].Cells[5].Controls[0];
                ddlthick.Items.Add(gvproduct.Rows[i].Cells[6].Text);
                txtpprice.Text = gvproduct.Rows[i].Cells[7].Text;
                Image1.ImageUrl = img.ImageUrl;
            }       
        }
        catch(Exception ex)
        {
            lblerr.Text = ex.Message;
        }
    }
    protected void btnpdtsave_Click(object sender, EventArgs e)
    {
        try
        {
            con = new SqlConnection(WebConfigurationManager.ConnectionStrings["testdb"].ConnectionString);
            cmd = new SqlCommand("insert into product (company,model,size,qty,imgurl,thickness,price)values(@company,@model,@size,@qty,@imgurl,@thick,@price)", con);
            cmd.Parameters.AddWithValue("@company",txtcompname.Text);
            cmd.Parameters.AddWithValue("@model",ddlmname.Text);
            cmd.Parameters.AddWithValue("@size", ddlpsizes.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@qty", txtpqty.Text);
            cmd.Parameters.AddWithValue("@imgurl", Image1.ImageUrl);
            cmd.Parameters.AddWithValue("@thick", ddlthick.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@price", txtpprice.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Product added')</script>");
            fillproduct();
        }
        catch(Exception ex)
        {
            lblerr.Text = ex.Message;
        }
    }
    protected void btnpdtupdate_Click(object sender, EventArgs e)
    {
        try
        { 
            con = new SqlConnection(WebConfigurationManager.ConnectionStrings["testdb"].ConnectionString);
            string sql = "update product set company=@company,model=@model,size=@size,qty=@qty,imgurl=@imgurl,thickness=@thick,price=@price where pid=@pid"; 
            cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@pid", txtpid.Text);
            cmd.Parameters.AddWithValue("@company", txtcompname.Text);
            cmd.Parameters.AddWithValue("@model", ddlmname.Text);
            cmd.Parameters.AddWithValue("@size", ddlpsizes.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@qty", txtpqty.Text);
            cmd.Parameters.AddWithValue("@imgurl", Image1.ImageUrl);
            cmd.Parameters.AddWithValue("@thick", ddlthick.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@price", txtpprice.Text);
            con.Open(); 
            cmd.ExecuteNonQuery(); 
            con.Close(); 
            lblerr.Text = "Record Updated"; 
            fillproduct(); 
            //Clear the textboxes is needed 
        } 
        catch(Exception ex) 
        { 
            lblerr.Text = ex.Message; 
        }
    }
    protected void btnpdtdelete_Click(object sender, EventArgs e)
    {
        try
        { 
            con = new SqlConnection(WebConfigurationManager.ConnectionStrings["testdb"].ConnectionString); 
            string sql = "delete from product where pid=@pid"; 
            cmd = new SqlCommand(sql, con); 
            cmd.Parameters.AddWithValue("@pid", txtpid.Text);
            con.Open(); 
            cmd.ExecuteNonQuery();
            con.Close(); 
            lblerr.Text = "Record Deleted"; 
            fillproduct(); //Clear the textboxes is needed 
        }
        catch (Exception ex)
        { 
            lblerr.Text = ex.Message;
        }
    }

    protected void fillproduct()
    {
        try
        {
            con = new SqlConnection(WebConfigurationManager.ConnectionStrings["testdb"].ConnectionString);
            cmd = new SqlCommand("select * from product", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt); 
            gvproduct.DataSource = dt; 
            gvproduct.DataBind();
            if (gvproduct.Rows.Count <= 0)
                
                Response.Write("<script>alert('No records to show')</script>");
        }
        catch (Exception ex)
        {
            lblerr.Text = ex.Message;
        }
    }
}