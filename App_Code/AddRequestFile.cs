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


public class AddRequestFile
{
    public string UserID;
    public string Category;
    public string SendID;
    public string UploadFile;
    public string KvcKey;
    public void InsertData()
    {
        DataTable table;
        DataRow row;
        string Connectionstring = WebConfigurationManager.ConnectionStrings["Admin"].ConnectionString;
        SqlConnection con = new SqlConnection(Connectionstring);
        SqlDataAdapter adp = new SqlDataAdapter("Select * From RequestedFile", con);
        DataSet ds = new DataSet();
        adp.Fill(ds, "RequestedFile");
        table = ds.Tables["RequestedFile"];
        row = table.NewRow();
        row[1] = UserID;
        row[2] = SendID;
        row[3] = Category;
        row[4] ="Pending";
        row[5] = UploadFile;
        row[6] = KvcKey;
        table.Rows.Add(row);
        SqlCommandBuilder comm = new SqlCommandBuilder(adp);
        adp.InsertCommand = comm.GetInsertCommand();
        adp.Update(ds, "RequestedFile");
        adp.Fill(ds);
    }
}
