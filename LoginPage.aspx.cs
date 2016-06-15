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


public partial class LoginPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["PageValue"] = Request.QueryString["SelectId"];
        lbllog.Text = Request.QueryString["UserId"];
        Session["UserNa"] = null;
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Session["UserNa"] = null;
        Session["FileID"] = null;
        if (txtUserName.Text == "Admin" && txtPassword.Text == "12345")
        {
            Response.Redirect("ALLFiles.aspx");
        
        }

        string Connectionstring = WebConfigurationManager.ConnectionStrings["Admin"].ConnectionString;
        SqlConnection con = new SqlConnection(Connectionstring);
        SqlDataAdapter adp = new SqlDataAdapter("SELECT * FROM [LoginData] ORDER BY [ID] DESC", con);
        DataSet ds = new DataSet();
        adp.Fill(ds,"LoginData");
        for(int i=0; i<ds.Tables["LoginData"].Rows.Count ;i++   )
        {
            if (txtUserName.Text == ds.Tables["LoginData"].Rows[i]["EmailID"].ToString() && txtPassword.Text == ds.Tables["LoginData"].Rows[i]["Pass"].ToString())
            {
                Session["UserName"] = ds.Tables["LoginData"].Rows[i]["FirstName"].ToString() + " " + ds.Tables["LoginData"].Rows[i]["LastName"].ToString();
                Session["UserNa"] = ds.Tables["LoginData"].Rows[i]["EmailID"].ToString();
                Session["UserMobNo"] = ds.Tables["LoginData"].Rows[i]["MobNo"].ToString();
                Session["AdminUser"] = "";
                Response.Redirect("UserAccount.aspx");
            }

            if ( txtUserName.Text == ds.Tables["LoginData"].Rows[i]["MobNo"].ToString() && txtPassword.Text == ds.Tables["LoginData"].Rows[i]["Pass"].ToString())
            {
                Session["UserName"] = ds.Tables["LoginData"].Rows[i]["FirstName"].ToString() + " " + ds.Tables["LoginData"].Rows[i]["LastName"].ToString();
                Session["UserNa"] = ds.Tables["LoginData"].Rows[i]["EmailID"].ToString();
                Session["UserMobNo"] = ds.Tables["LoginData"].Rows[i]["MobNo"].ToString();
                string abc = Session["UserNa"].ToString();
                Session["AdminUser"] = "";
               
                Response.Redirect("UserAccount.aspx");
            }
        }
        

    }



    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("ForgetPassword.aspx"); 
    }
}
