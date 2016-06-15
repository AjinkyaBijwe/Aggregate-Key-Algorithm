using System;
using System.Data;
using System.Configuration;

using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;
using System.Web.Configuration; 
public class AddLoginData
{
    public string FirstName;
    public string mobileno;
    public string Lastname;
    public string emailid;
    public string Pass;
    public string IpAddre;
  

    public void InsertData()
    {
        DataTable table;
        DataRow row;
        string Connectionstring = WebConfigurationManager.ConnectionStrings["Admin"].ConnectionString;
        SqlConnection con = new SqlConnection(Connectionstring);
        SqlDataAdapter adp = new SqlDataAdapter("Select * From LoginData", con);
        DataSet ds = new DataSet();
        adp.Fill(ds, "LoginData");
        table = ds.Tables["LoginData"];
        row = table.NewRow();
        row[1] = FirstName;
        row[2] = Lastname;
        row[3] = mobileno;
        row[4] = emailid;
        row[5] = Pass;
        row[6] = IpAddre;
      
        table.Rows.Add(row);
        SqlCommandBuilder comm = new SqlCommandBuilder(adp);
        adp.InsertCommand = comm.GetInsertCommand();
        adp.Update(ds, "LoginData");
        adp.Fill(ds);
    }
}
