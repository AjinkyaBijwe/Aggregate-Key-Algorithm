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
public class AddBasicInfo
{
    public string Name;
    public string mobileno;
    public string mobileno2;
    public string emailid;
    public string City;
    public string District;
    public string PerAddress;
    public string CurAddress;
    public string gender;
    public string MaritalS;
    public string Cast;
    public string DOB;
    public string BasicID;
   
    public void InsertData()
    {
        DataTable table;
        DataRow row;
        string Connectionstring = WebConfigurationManager.ConnectionStrings["Admin"].ConnectionString;
        SqlConnection con = new SqlConnection(Connectionstring);
        SqlDataAdapter adp = new SqlDataAdapter("Select * From BasicInfo", con);
        DataSet ds = new DataSet();
        adp.Fill(ds, "BasicInfo");
        table = ds.Tables["BasicInfo"];
        row = table.NewRow();
        row[1] = Name;
        row[2] = emailid;
        row[3] = mobileno;
        row[4] = mobileno2;
        row[5] = District; 
        row[6] = City;
        row[7] = PerAddress;
        row[8] = CurAddress;
        row[9] = gender;
        row[10] = MaritalS;
        row[11] = Cast;
        row[12] = DOB;
        row[13] = BasicID;
        table.Rows.Add(row);
        SqlCommandBuilder comm = new SqlCommandBuilder(adp);
        adp.InsertCommand = comm.GetInsertCommand();
        adp.Update(ds, "BasicInfo");
        adp.Fill(ds);
    }
}
