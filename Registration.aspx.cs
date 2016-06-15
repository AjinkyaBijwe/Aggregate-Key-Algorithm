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

public partial class Feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void btnSignUpSubmit_Click(object sender, EventArgs e)
    {
         if (txtFirstName.Text == "" || txtLastName.Text == "" || txtPass.Text == "" || txtEmail.Text == "" || txtMobileNo.Text == "" || txtConfmPass.Text == "")
        {
            Response.Write("<SCRIPT>alert('Fields Cannot Be Blank')</SCRIPT>");
            return;
        }
         
        string Connectionstring = WebConfigurationManager.ConnectionStrings["Admin"].ConnectionString;
        SqlConnection con = new SqlConnection(Connectionstring);
        SqlDataAdapter adp = new SqlDataAdapter("SELECT * FROM [LoginData] ORDER BY [ID] DESC", con);
        DataSet ds = new DataSet();
        adp.Fill(ds, "LoginData");
        for (int i = 0; i < ds.Tables["LoginData"].Rows.Count; i++)
        {
            string mobno = ds.Tables["LoginData"].Rows[i]["MobNo"].ToString();
            if (txtMobileNo.Text == mobno)
            {
                Response.Write("<SCRIPT>alert('Mobile Number Already in Use.')</SCRIPT>");
                return;
            }
            string emailid= ds.Tables["LoginData"].Rows[i]["EmailID"].ToString();
            if (txtEmail.Text == emailid)
            {
                Response.Write("<SCRIPT>alert('Email-ID Already in Use.')</SCRIPT>");
                return;
            }

            AddLoginData NewEntery = new AddLoginData();
            NewEntery.FirstName = txtFirstName.Text;
            NewEntery.Lastname = txtLastName.Text;
            NewEntery.mobileno = txtMobileNo.Text;
            NewEntery.emailid = txtEmail.Text;
            NewEntery.Pass = txtPass.Text;
            NewEntery.InsertData();
            txtEmail.Text = "";
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtMobileNo.Text = "";
            txtPass.Text = "";
            Response.Write("<SCRIPT>alert('Signed Up Successfully Please Login')</SCRIPT>");
        }

        
    }
}
