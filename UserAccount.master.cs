using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class UserAccount : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {  
            string abc = Request.QueryString["Type1"];

            #region Basic Information
            if (Convert.ToString(Session["UserMobNo"]) != "")
             {
            if (abc == "Basic")
            {
                string mobno = Session["UserMobNo"].ToString ();
                string Connectionstring = WebConfigurationManager.ConnectionStrings["Admin"].ConnectionString;
                SqlConnection con = new SqlConnection(Connectionstring);
                SqlDataAdapter adp = new SqlDataAdapter("SELECT * FROM [BasicInfo] Where MobNo='"+Session["UserMobNo"]+"' ORDER BY [ID] DESC", con);
                DataSet ds = new DataSet();
                adp.Fill(ds, "BasicInfo");
                if (ds.Tables["BasicInfo"].Rows.Count > 0)
                {
                    Response.Redirect("UserAccount.aspx");
                }
                else
                {
                    Response.Redirect("BasicInformation.aspx");
                }
            }
           }
            #endregion

            
            if (Convert.ToString(Session["UserName"]) != "")
            {
                lblUserName.Text = "Welcome - "+Session["UserName"].ToString();
            }
        }
    }
    protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
    {

    }
}
