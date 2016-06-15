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
using System.Threading;
public partial class UploadFileatCloud : System.Web.UI.Page
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
                SqlDataAdapter adp = new SqlDataAdapter("select * from FileUpload Where ID=" + Session["FileID"].ToString(), sqlCon);
                DataSet ds = new DataSet();
                adp.Fill(ds, "FileUpload");
                
                #region Start Time
                DateTime dt = DateTime.Now;
                lblStartMili.Text = dt.ToString("hh:mm:ss.fff tt");
                lblStartSec.Text = DateTime.Now.Second.ToString();
                lblStartMinute.Text = DateTime.Now.Minute.ToString();
                Thread.Sleep(10);
                #endregion
              
                lblCategory.Text = ds.Tables["FileUpload"].Rows[0]["Category"].ToString();
                lblUserName.Text =ds.Tables["FileUpload"].Rows[0]["UserID"].ToString();
                txtContent.Text = ds.Tables["FileUpload"].Rows[0]["FileData"].ToString();

                #region End Time
                DateTime dt1 = DateTime.Now;
                lblEndMili.Text = dt1.ToString("hh:mm:ss.fff tt");

                lblEndSec.Text = DateTime.Now.Second.ToString();
                lblEndMinute.Text = DateTime.Now.Minute.ToString();
                TimeSpan timediff = dt1 - dt;
                lblMiliSec.Text = timediff.TotalMilliseconds.ToString();
                //lblMiliSec.Text   = (Convert.ToDouble(lblEndMili.Text) - Convert.ToDouble(lblStartMili.Text)).ToString();
                lblSec.Text = (Convert.ToDouble(lblEndSec.Text) - Convert.ToDouble(lblStartSec.Text)).ToString();
                lblMinute.Text = (Convert.ToDouble(lblEndMinute.Text) - Convert.ToDouble(lblStartMinute.Text)).ToString();
                #endregion

                string filename = ds.Tables["FileUpload"].Rows[0]["UpFile1"].ToString();
                string fileLocation = Server.MapPath("~/Docs/" + filename);
                FileInfo fi = new FileInfo(fileLocation);
                lblSize.Text = fi.Length + " Bytes";
            }
        }
    }

  
  
    protected void btnUpload_Click(object sender, EventArgs e)
    {

        string connectionString = ConfigurationManager.ConnectionStrings["Admin"].ConnectionString;
        sqlCon = new SqlConnection(connectionString);
        sqlCon.Open();
        SqlDataAdapter adp = new SqlDataAdapter("Update FileUpload SET FStatus='Verified' Where ID=" + Session["FileID"].ToString(), sqlCon);
        DataSet ds = new DataSet();
        adp.Fill(ds, "FileUpload");
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
}
