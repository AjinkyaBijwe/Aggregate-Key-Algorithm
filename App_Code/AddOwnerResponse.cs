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

public class AddOwnerResponse
{
    public string UserID;
    public string Category;
    public string SendID;
    public string KVCKey;
    public string UpFile;
    public void InsertData()
    {
        DataTable table;
        DataRow row;
        string Connectionstring = WebConfigurationManager.ConnectionStrings["Admin"].ConnectionString;
        SqlConnection con = new SqlConnection(Connectionstring);
        SqlDataAdapter adp = new SqlDataAdapter("Select * From OwnerResponse", con);
        DataSet ds = new DataSet();
        adp.Fill(ds, "OwnerResponse");
        table = ds.Tables["OwnerResponse"];
        row = table.NewRow();
        row[1] = UserID;
        row[2] = SendID;
        row[3] = Category;
        row[4] = KVCKey;
        row[5] = "Pending";
        row[6] = UpFile; 
        table.Rows.Add(row);
        SqlCommandBuilder comm = new SqlCommandBuilder(adp);
        adp.InsertCommand = comm.GetInsertCommand();
        adp.Update(ds, "OwnerResponse");
        adp.Fill(ds);
    }
}
