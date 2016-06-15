using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

using System.Data.SqlClient;
using System.Web.Configuration;
public class AddCloudData
{
    public string FileName;
    public string Category;
    public string UserID;
    public string UpFile;
    public string PubKey;
    public string MastKey;
    public string FileData;
   
    public void InsertData()
    {
        DataTable table;
        DataRow row;
        string Connectionstring = WebConfigurationManager.ConnectionStrings["Admin"].ConnectionString;
        SqlConnection con = new SqlConnection(Connectionstring);
        SqlDataAdapter adp = new SqlDataAdapter("Select * From FileUpload", con);
        DataSet ds = new DataSet();
        adp.Fill(ds, "FileUpload");
        table = ds.Tables["FileUpload"];
        row = table.NewRow();
        row[1] = FileName;
        row[2] = UserID;
        row[3] = UpFile;
        row[4] = PubKey;
        row[5] = MastKey;
        row[6] = FileData;
        row[7] = Category;
        table.Rows.Add(row);
        SqlCommandBuilder comm = new SqlCommandBuilder(adp);
        adp.InsertCommand = comm.GetInsertCommand();
        adp.Update(ds, "FileUpload");
        adp.Fill(ds);
    }
}
