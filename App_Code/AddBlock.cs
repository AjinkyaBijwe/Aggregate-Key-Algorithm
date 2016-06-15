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
public class AddBlock
{
    public string UserID;
    public string BlockID;

    public void InsertData()
    {
        DataTable table;
        DataRow row;
        string Connectionstring = WebConfigurationManager.ConnectionStrings["Admin"].ConnectionString;
        SqlConnection con = new SqlConnection(Connectionstring);
        SqlDataAdapter adp = new SqlDataAdapter("Select * From BlockUser", con);
        DataSet ds = new DataSet();
        adp.Fill(ds, "BlockUser");
        table = ds.Tables["BlockUser"];
        row = table.NewRow();
        row[1] = UserID;
        row[2] = BlockID;
      
        table.Rows.Add(row);
        SqlCommandBuilder comm = new SqlCommandBuilder(adp);
        adp.InsertCommand = comm.GetInsertCommand();
        adp.Update(ds, "BlockUser");
        adp.Fill(ds);
    }
}
