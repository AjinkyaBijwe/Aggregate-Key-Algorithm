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
using System.IO;
using System.Text;
using DTG.Word;
using EPocalipse.IFilter;
using System.Threading;

public partial class PrivateDataUpload : System.Web.UI.Page
{
    SqlConnection sqlCon;
    ArrayList FileName = new ArrayList();
    ArrayList FileExtension = new ArrayList();
    ArrayList Size = new ArrayList();
    int id = 0;
    string name = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        string connectionString = ConfigurationManager.ConnectionStrings["Admin"].ConnectionString;
        sqlCon = new SqlConnection(connectionString);
        if (!IsPostBack)
        {
            GenratePublicAndMasterKey();
        }
    }
  
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    { 
        #region GrideView Row Command
        if (e.CommandName == "Download")
        {
            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = GridView1.Rows[index];
            string fileName = row.Cells[0].Text;
         
            Response.ContentType = "application/octet-stream";
            Response.AddHeader("Content-Disposition", "attachment;filename=" + fileName);
            Response.TransmitFile(Server.MapPath("~/Docs/" + fileName));
            Response.End();
        }
         #endregion
    }

    public void GenratePublicAndMasterKey()
    {
        string connectionString = ConfigurationManager.ConnectionStrings["Admin"].ConnectionString;
        sqlCon  = new SqlConnection (connectionString );
        sqlCon.Open();
        SqlDataAdapter adp = new SqlDataAdapter("select PubKey from FileUpload ORDER BY ID DESC", sqlCon);
        DataSet ds = new DataSet();
        adp.Fill(ds, "FileUpload");
        if (ds.Tables["FileUpload"].Rows.Count >0)
        {

            string file = ds.Tables["FileUpload"].Rows[0][0].ToString();
            string Id = DecryptionAlogorithm(file);
            string[] abc = Id.Split(new Char[] { ' ' });
            txtPublicKey.Text = EncreyptionAlogorithm((Convert.ToInt32(abc[0])+8).ToString () +" I");
        }
        else
        {

            txtPublicKey.Text = EncreyptionAlogorithm("24 I");
          
        }

        SqlDataAdapter adp1 = new SqlDataAdapter("select MastKey from FileUpload ORDER BY ID DESC", sqlCon );
        DataSet ds1 = new DataSet();
        adp1.Fill(ds1, "FileUpload");
        if (ds1.Tables["FileUpload"].Rows.Count >0)
        {
            string FileName = ds1.Tables["FileUpload"].Rows[0][0].ToString();
            string Id = DecryptionAlogorithm(FileName );
            string[] abc = Id.Split(new Char[] { ' ' }); 
            txtMasterKey.Text =  EncreyptionAlogorithm((Convert.ToInt32(abc[0])+8).ToString () +" AR" );   
        }
        else
        {
            txtMasterKey.Text = EncreyptionAlogorithm("35 AR");
     
        }

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

    protected void btnUpload_Click(object sender, EventArgs e)
    {  
        #region Upload
       if (FileUpload1.HasFile)
        {
            FileName.Add (Path.GetFileName(FileUpload1.PostedFile.FileName));
            FileExtension.Add(Path.GetExtension(FileUpload1.PostedFile.FileName));
            string fileLocation1 = Server.MapPath("~/Docs/" + Path.GetFileName(FileUpload1.PostedFile.FileName));
            FileUpload1.SaveAs(fileLocation1);
            Size.Add(Math.Round(((decimal)FileUpload1.PostedFile.ContentLength / (decimal)1024), 2).ToString()); 
        }

     for (int i=0; i<FileExtension.Count;i++  )
     {
         if (FileExtension[i].ToString() == ".doc" )
          {
              InsertData(FileName[i].ToString(),Size[i].ToString () );
              WordDocumentRetrieve();
          }
          else
          {
           InsertData(FileName[i].ToString(),Size[i].ToString () );
          }
     }

    

        GridView1.DataBind();

        #endregion
    }

    public void InsertData(string fileName, string fileSize)
    {
        string connectionString = ConfigurationManager.ConnectionStrings["Admin"].ConnectionString;
        sqlCon = new SqlConnection(connectionString);
        string strInsert = "INSERT INTO FileUpload(FileName,Category,UserID,UpFile1,PubKey,MastKey,FStatus,FSize) VALUES(@FileName,@Cate,@UID,@UpFile1,@PubKey,@MastKey,@FSta,@FSize)";
        SqlCommand command = new SqlCommand(strInsert, sqlCon);
      
        #region Start Time
        DateTime dt = DateTime.Now;
        lblStartMili.Text = dt.ToString("hh:mm:ss.fff tt");
        lblStartSec.Text = DateTime.Now.Second.ToString();
        lblStartMinute.Text = DateTime.Now.Minute.ToString();
        Thread.Sleep(10);
        #endregion

     
        command.Parameters.AddWithValue("@FileName", EncreyptionAlogorithm(txtFileName.Text));
       
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
      
        command.Parameters.AddWithValue("@Cate", txtCategory.Text);
        command.Parameters.AddWithValue("@UpFile1", fileName);
        command.Parameters.AddWithValue("@PubKey", txtPublicKey.Text);
        command.Parameters.AddWithValue("@MastKey", txtMasterKey.Text);
        command.Parameters.AddWithValue("@UID", Session["UserNa"].ToString());
        command.Parameters.AddWithValue("@FSta", "Not_Verified");
        command.Parameters.AddWithValue("@FSize", fileSize);
        sqlCon.Open();
        int result = command.ExecuteNonQuery();
        sqlCon.Close();

        if (result > 0)
            lblMessage.Text = "File Uploaded";
        GenratePublicAndMasterKey();
    }

    #region Word Document
    public void   WordDocumentRetrieve()
    {
         SqlDataAdapter adp1 = new SqlDataAdapter("Select Max(ID) From FileUpload", sqlCon);
        DataSet ds1 = new DataSet();
        adp1.Fill(ds1, "FileUpload");
        id = Convert.ToInt32(ds1.Tables["FileUpload"].Rows[0][0].ToString());

        SqlDataAdapter adp = new SqlDataAdapter("Select UpFile1 From FileUpload Where ID=" + id, sqlCon);
        DataSet ds = new DataSet();
        adp.Fill(ds, "FileUpload");
        name = ds.Tables["FileUpload"].Rows[0]["UpFile1"].ToString();
        if (name != "")
        {

            string temp = null;
            var a = new ArrayList();
            TextReader reader = new FilterReader(Server.MapPath("~/Docs/" + name));
            using (reader)
            {
                temp = reader.ReadToEnd();
            }

            if (temp.Length >= 1000)
            {
                SqlCommand Comm = sqlCon.CreateCommand();
                Comm.CommandText = "Update FileUpload SET FileData='" + temp.Substring(0,999).Trim ()   + "' Where ID=" + id;
                Comm.Connection = sqlCon;
                Comm.ExecuteNonQuery();
                sqlCon.Close();
            }
            else
            {
                SqlCommand Comm = sqlCon.CreateCommand();
                Comm.CommandText = "Update FileUpload SET FileData='" + temp + "' Where ID=" + id;
                Comm.Connection = sqlCon;
                Comm.ExecuteNonQuery();
                sqlCon.Close();
            }
        }
      
    }
    #endregion

    protected void GridView1_PageIndexChanged(object sender, EventArgs e)
    {

    }
}
