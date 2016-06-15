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
using System.Web.Configuration;

public partial class BasicInformation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string abc = Convert.ToString(Session["UserNa"]);
            if (Convert.ToString(Session["UserNa"]) != "" || Convert.ToString(Session["UserMobNo"]) != "")
            {
                string Connectionstring = WebConfigurationManager.ConnectionStrings["Admin"].ConnectionString;
                SqlConnection con = new SqlConnection(Connectionstring);
                SqlDataAdapter adp = new SqlDataAdapter("SELECT * FROM [LoginData] Where MobNo='" + Session["UserMobNo"].ToString() + "' OR EmailID='" + Session["UserNa"].ToString() + "' ORDER BY [ID] DESC", con);
                DataSet ds = new DataSet();
                adp.Fill(ds, "LoginData");
                lblName.Text = Session["UserName"].ToString();
                lblEmailID.Text = ds.Tables["LoginData"].Rows[0]["EmailID"].ToString();
                lblMobNo.Text = ds.Tables["LoginData"].Rows[0]["MobNo"].ToString(); 
            }
        }
    }
   


    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string Connectionstring = WebConfigurationManager.ConnectionStrings["Admin"].ConnectionString;
        SqlConnection con = new SqlConnection(Connectionstring);
        SqlDataAdapter adp = new SqlDataAdapter("SELECT * FROM [BasicInfo] ORDER BY [ID] DESC", con);
        DataSet ds = new DataSet();
        adp.Fill(ds, "BasicInfo");
        for (int i = 0; i < ds.Tables["BasicInfo"].Rows.Count; i++)
        {
            string mobno = ds.Tables["BasicInfo"].Rows[i]["MobNo"].ToString();

            if (txtMobileNo2.Text    == mobno)
            {
                Response.Write("<SCRIPT>alert('Mobile Number Already in Use.')</SCRIPT>");
                return;
            }
        }

        AddBasicInfo NewEntery = new AddBasicInfo();
        NewEntery.Cast = txtCast.Text;
        NewEntery.City = txtCity.Text;
        NewEntery.CurAddress = txtCurAddress.Text;
        NewEntery.District = txtDistrict.Text;
        NewEntery.emailid = lblEmailID.Text;
        NewEntery.gender = ddlGender.Text;
        NewEntery.MaritalS = ddlMaritalStatus.Text;
        NewEntery.mobileno = lblMobNo.Text;
        NewEntery.mobileno2 = txtMobileNo2.Text;
        NewEntery.Name = lblName.Text;
        NewEntery.PerAddress = txtPerAddress.Text;
        NewEntery.DOB = TextBox1.Text;    
        NewEntery.InsertData();
        txtCast.Text = "";
        txtCity.Text = "";
        txtCurAddress.Text = "";
        txtDistrict.Text = "";
        txtMobileNo2.Text = "";
        txtPerAddress.Text = "";
        ddlGender.Text = "";
        lblEmailID.Text = "";
        ddlMaritalStatus.Text = "";
        lblMobNo.Text = "";
        TextBox1.Text = "";
        Response.Write("<SCRIPT>alert('Submitting')</SCRIPT>");
        Response.Redirect("UserAccount.aspx");  
    }

}
