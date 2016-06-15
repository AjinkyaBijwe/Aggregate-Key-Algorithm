using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;
using System.Web.Configuration;   
public partial class AddAdvertisment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //Session["PhotoID"] = "";
        InsertProduct NewProduct = new InsertProduct();
        NewProduct.description = txtDescription.Text;
        NewProduct.address = txtAddress.Text;
        NewProduct.dealername = txtDealerName.Text;
        NewProduct.productcompany = txtProductCompany.Text;
        NewProduct.type = ddlType.Text;  
        if (ProductPhoto.HasFile)
        {
            int imagesize = ProductPhoto.PostedFile.ContentLength;
            byte[] bytesImage = new byte[imagesize];
            ProductPhoto.PostedFile.InputStream.Read(bytesImage, 0, imagesize);
            NewProduct.photo = bytesImage;
        }
        NewProduct.InsertData();
        txtDescription.Text = "";
        txtProductCompany.Text   = "";
        txtAddress.Text   = "";

        string connectionString = WebConfigurationManager.ConnectionStrings["Admin"].ConnectionString;
        SqlConnection con = new SqlConnection(connectionString);
        con.Open();
        string sql = "Select Max(ID) from Advertisment";
        SqlDataAdapter adp = new SqlDataAdapter(sql, con);

        DataSet ds = new DataSet();
        adp.Fill(ds, "Advertisment");

        Session["AdvID"] = ds.Tables["Advertisment"].Rows[0][0].ToString(); 
    }
}
