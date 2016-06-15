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

public partial class DownloadFile : System.Web.UI.Page
{
    SqlConnection sqlCon;
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["Count"] != null)
            {
                Session["Count"] = 0;
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

    public string DecryptionAlogorithm(string value)
    {
        string decryResult = null;
        for (int i = 0; i < value.Length; i += 2)
        {

            byte[] ASCIIValues = Encoding.ASCII.GetBytes(value.Substring(i, 1));

            string decrydata = ((Convert.ToInt64(ASCIIValues[0]) * 4) + Convert.ToInt64(value.Substring(i + 1, 1))).ToString();
            string decrybinarydata = Convert.ToString(Convert.ToInt64(decrydata), 2);
            int result = Convert.ToInt32(decrybinarydata, 2);

            string complementedBinaryNumber = Convert.ToString(~result, 2);
            complementedBinaryNumber = complementedBinaryNumber.Remove(0, complementedBinaryNumber.Length - decrybinarydata.Length);

            string decryReversdata = complementedBinaryNumber;

            string decryHex = Convert.ToInt32(complementedBinaryNumber, 2).ToString();
            char charData;
            charData = (char)(Convert.ToInt64(decryHex));
            decryResult += charData.ToString();

        }
        return decryResult;
    }

    protected void btnDownload_Click(object sender, EventArgs e)
    {
        #region Start Time
        DateTime dt = DateTime.Now;
        lblStartMili.Text = dt.ToString("hh:mm:ss.fff tt");
        lblStartSec.Text = DateTime.Now.Second.ToString();
        lblStartMinute.Text = DateTime.Now.Minute.ToString();
        
        #endregion
       
        if (Convert.ToString(Session["filename"]) != null)
        {
            string abc =Session["Count"].ToString ();
            if (Convert.ToInt32(Session["Count"]) >= 3)
            {
                Response.ContentType = "application/octet-stream";
                Response.AddHeader("Content-Disposition", "attachment;filename=" + Session["filename"].ToString());
                Response.TransmitFile(Server.MapPath("~/Docs/DuplicateCopy.txt"));
                Session["Count"] = 0;
            }
            else
            {
                Response.ContentType = "application/octet-stream";
                Response.AddHeader("Content-Disposition", "attachment;filename=" + Session["filename"].ToString());
                Response.TransmitFile(Server.MapPath("~/Docs/" + Session["filename"].ToString()));
           
            }
        }

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

    }

   
    protected void btnGetData_Click(object sender, EventArgs e)
    {
        if (txtEnterKVC.Text != "")
        {

            lblStartMili.Text = DateTime.Now.Millisecond.ToString();
            lblStartSec.Text = DateTime.Now.Second.ToString();
            lblStartMinute.Text = DateTime.Now.Minute.ToString();
            string connectionString = ConfigurationManager.ConnectionStrings["Admin"].ConnectionString;
            sqlCon = new SqlConnection(connectionString);
            sqlCon.Open();
            string upfile = Session["upfile"].ToString();
            SqlDataAdapter adp2 = new SqlDataAdapter("select * from OwnerResponse Where SendID='" + Session["UserNa"].ToString() + "' AND UpFile='" + Session["upfile"].ToString() + "' ", sqlCon);
            DataSet ds2 = new DataSet();
            adp2.Fill(ds2, "OwnerResponse");
            if (ds2.Tables["OwnerResponse"].Rows.Count > 0)
            {
                string kvckey = ds2.Tables["OwnerResponse"].Rows[0]["KVCKey"].ToString();
                if (txtEnterKVC.Text == kvckey)
                {
                    if (Convert.ToString(Session["FileID"]) != null)
                    {
                        SqlDataAdapter adp = new SqlDataAdapter("select * from FileUpload Where ID=" + Session["FileID"].ToString(), sqlCon);
                        DataSet ds = new DataSet();
                        adp.Fill(ds, "FileUpload");
                        lblCategory.Text = ds.Tables["FileUpload"].Rows[0]["Category"].ToString();
                        lblFileName.Text = DecryptionAlogorithm(ds.Tables["FileUpload"].Rows[0]["FileName"].ToString());

                        txtContent.Text = EncreyptionAlogorithm(ds.Tables["FileUpload"].Rows[0]["FileData"].ToString());
                        string filename = ds.Tables["FileUpload"].Rows[0]["UpFile1"].ToString();
                        lblSize.Text = ds.Tables["FileUpload"].Rows[0]["FSize"].ToString() + " KB";
                        Session["filename"] = filename;
                        string fileLocation = Server.MapPath("~/Docs/" + filename);
                        Session["Count"] = 0;

                    }
                }
                else
                {
                  
                    Session["Count"] = (Convert.ToInt32 (Session["Count"]) + 1).ToString();
                  
                    if (Convert.ToInt32(Session["Count"]) >= 3)
                    {
                        SqlDataAdapter adp = new SqlDataAdapter("select * from FileUpload Where ID=" + Session["FileID"].ToString(), sqlCon);
                        DataSet ds = new DataSet();
                        adp.Fill(ds, "FileUpload");
                        lblCategory.Text = ds.Tables["FileUpload"].Rows[0]["Category"].ToString();
                        lblFileName.Text = DecryptionAlogorithm(ds.Tables["FileUpload"].Rows[0]["FileName"].ToString());
                        txtContent.Text = "New Delhi: . Strong tremors were felt in Delhi and the National Capital Region (NCR) after two earthquakes hit the city within an hour of each other today. The first cc. resulting in tremors lasting for three-four seconds in parts of the national capital.The earthquake measuring 3.1 ., depth of 10-11km , the Richter scale hit after 12.30 a.m (local time) here. C to be in the national capital territory. However, we are still analysing the data, an Indian Meterological Department (IMD) official told IANS. An hour later, at 1:41 am, strong tremors were felt in Delhi and adjoining satellite cities Noida and Ghaziabad after  another  quake measuring 3.3 on the Richter scale struck the NCR.";
                        string filename = ds.Tables["FileUpload"].Rows[0]["UpFile1"].ToString();
                        lblSize.Text = ds.Tables["FileUpload"].Rows[0]["FSize"].ToString() + " KB";
                        Session["filename"] = filename;
                        string fileLocation = Server.MapPath("~/Docs/DuplicateCopy.txt");
                    }
                    else
                    {
                        txtEnterKVC.Text = "";
                        lblEndMili.Text = DateTime.Now.Millisecond.ToString();
                        lblEndSec.Text = DateTime.Now.Second.ToString();
                        lblEndMinute.Text = DateTime.Now.Minute.ToString();
                        lblMiliSec.Text = (Convert.ToDouble(lblEndMili.Text) - Convert.ToDouble(lblStartMili.Text)).ToString();
                        lblSec.Text = (Convert.ToDouble(lblEndSec.Text) - Convert.ToDouble(lblStartSec.Text)).ToString();
                        lblMinute.Text = (Convert.ToDouble(lblEndMinute.Text) - Convert.ToDouble(lblStartMinute.Text)).ToString();
                        Response.Write("<SCRIPT>alert('You Have Enter Wrong KVC No')</SCRIPT>");
                        return;
                    }

                }
            }
            lblEndMili.Text = DateTime.Now.Millisecond.ToString();
            lblEndSec.Text = DateTime.Now.Second.ToString();
            lblEndMinute.Text = DateTime.Now.Minute.ToString();
            lblMiliSec.Text = (Convert.ToDouble(lblEndMili.Text) - Convert.ToDouble(lblStartMili.Text)).ToString();
            lblSec.Text = (Convert.ToDouble(lblEndSec.Text) - Convert.ToDouble(lblStartSec.Text)).ToString();
            lblMinute.Text = (Convert.ToDouble(lblEndMinute.Text) - Convert.ToDouble(lblStartMinute.Text)).ToString();

        }
    }
}
