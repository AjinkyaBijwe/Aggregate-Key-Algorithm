using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;
using System.IO;
using System.Text;

public partial class FileVerification : System.Web.UI.Page
{ 
    SqlConnection sqlCon;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Convert.ToString(Session["FileID"]) != null)
            {
                string connectionString = ConfigurationManager.ConnectionStrings["Admin"].ConnectionString;
                sqlCon = new SqlConnection(connectionString);
                sqlCon.Open();
                SqlDataAdapter adp = new SqlDataAdapter("select * from FileUpload Where ID=" + Session["FileID"].ToString (), sqlCon);
                DataSet ds = new DataSet();
                adp.Fill(ds, "FileUpload");
                lblCategory.Text = ds.Tables ["FileUpload"].Rows [0]["Category"].ToString ();
                lblUserName.Text =  ds.Tables["FileUpload"].Rows[0]["UserID"].ToString();
                lblSize.Text =  ds.Tables["FileUpload"].Rows[0]["FSize"].ToString()+" KB";
                lblMasterKey.Text = ds.Tables["FileUpload"].Rows[0]["MastKey"].ToString();
                lblPublicKey.Text = ds.Tables["FileUpload"].Rows[0]["PubKey"].ToString();

                txtContent.Text =EncreyptionAlogorithm ( ds.Tables["FileUpload"].Rows[0]["FileData"].ToString());
                string filename = ds.Tables["FileUpload"].Rows[0]["UpFile1"].ToString();
                string fileLocation = Server.MapPath("~/Docs/" + filename);
            }

        }
    }

    public string EncreyptionAlogorithm(string value)
    {
        byte[] ASCIIValues = Encoding.ASCII.GetBytes(value);
        string encryptdata = null;
        foreach (byte b in ASCIIValues)
        {

            string binarydata = Convert.ToString(Convert.ToInt64(b.ToString()), 2);
            string NewData = null;
            switch (binarydata.Length.ToString())
            {
                case "7": NewData = "0" + binarydata;
                    break;
                case "6": NewData = "00" + binarydata;
                    break;
                case "5": NewData = "000" + binarydata;
                    break;
                case "4": NewData = "0000" + binarydata;
                    break;
                case "3": NewData = "00000" + binarydata;
                    break;
                case "2": NewData = "000000" + binarydata;
                    break;
                case "1": NewData = "0000000" + binarydata;
                    break;
                case "0": NewData = "00000000" + binarydata;
                    break;

            }
            int result = Convert.ToInt32(NewData, 2);
            string complementedBinaryNumber = Convert.ToString(~result, 2);
            complementedBinaryNumber = complementedBinaryNumber.Remove(0, complementedBinaryNumber.Length - NewData.Length);
            string hexdata = Convert.ToInt32(complementedBinaryNumber, 2).ToString();
            char charData;
            charData = (char)(Convert.ToInt64(hexdata) / 4);

            string remainder = (Convert.ToInt64(hexdata) % 4).ToString();
            encryptdata += charData.ToString() + remainder;

        }
        return encryptdata;

    }
   
   

    protected void btnDecrypt_Click(object sender, EventArgs e)
    {
      

        if (lblPublicKey.Text == txtPublicKey.Text && lblMasterKey.Text == txtMasterKey.Text)
        {
            Response.Redirect("UploadFileatCloud.aspx");
        }
        else
        {
            Response.Write("<SCRIPT>alert('Key Not Match......')</SCRIPT>");
        }

      
    }

}
