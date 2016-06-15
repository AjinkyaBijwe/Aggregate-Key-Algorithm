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
public class InsertProduct
{
    public byte[] photo;
    public string description;
    public string dealername;
    public string productcompany;
    public string address;
    public string type;

    public void InsertData()
    {
        string Connectionstring = WebConfigurationManager.ConnectionStrings["Admin"].ConnectionString;
        SqlConnection con = new SqlConnection(Connectionstring);
        SqlCommand cmd = new SqlCommand("AddAdvertisment", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add(new SqlParameter("@descr", SqlDbType.VarChar));
        cmd.Parameters["@descr"].Value = description;
        cmd.Parameters.Add(new SqlParameter("@photo", SqlDbType.Image));
        cmd.Parameters["@photo"].Value = photo;
        cmd.Parameters.Add(new SqlParameter("@pc", SqlDbType.VarChar));
        cmd.Parameters["@pc"].Value = productcompany;
        cmd.Parameters.Add(new SqlParameter("@addres", SqlDbType.VarChar));
        cmd.Parameters["@addres"].Value = address;
        cmd.Parameters.Add(new SqlParameter("@dn", SqlDbType.VarChar));
        cmd.Parameters["@dn"].Value = dealername;
        cmd.Parameters.Add(new SqlParameter("@ty", SqlDbType.VarChar));
        cmd.Parameters["@ty"].Value = type;
        
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }
}
