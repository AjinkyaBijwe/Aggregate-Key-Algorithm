using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class RequestFile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string connectionString = WebConfigurationManager.ConnectionStrings["Admin"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            string sql = "Select Distinct(UserID) from FileUpload";
            SqlDataAdapter adp1 = new SqlDataAdapter(sql, con);
            DataTable ds1 = new DataTable();
            adp1.Fill(ds1);
            DataRow dr;
            dr = ds1.NewRow();
            dr.ItemArray = new object[] { "Select User" };
            ds1.Rows.InsertAt(dr, 0);

            ddlUserName.DataSource = ds1;
            ddlUserName.DataMember = "UserID";
            ddlUserName.DataValueField = "UserID";
            ddlUserName.DataBind();
        }
    }
  
    protected void ddlUserName_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlUserName.SelectedIndex != 0)
        {
            string connectionString = WebConfigurationManager.ConnectionStrings["Admin"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            string sql = "Select Distinct(Category) from FileUpload Where UserID='" + ddlUserName.Text + "' ";
            SqlDataAdapter adp1 = new SqlDataAdapter(sql, con);
            DataTable ds1 = new DataTable();
            adp1.Fill(ds1);
            DataRow dr;
            dr = ds1.NewRow();
            dr.ItemArray = new object[] { "Select Category" };
            ds1.Rows.InsertAt(dr, 0);

            ddlCategory.DataSource = ds1;
            ddlCategory.DataMember = "Category";
            ddlCategory.DataValueField = "Category";
            ddlCategory.DataBind();
            
        }
    }
    
    protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlUserName.SelectedIndex != 0 && ddlCategory.SelectedIndex != 0)
        {
            string connectionString = WebConfigurationManager.ConnectionStrings["Admin"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            string sql = "Select * from FileUpload Where UserID='" + ddlUserName.Text + "' AND Category='" + ddlCategory.Text + "' ";
            SqlDataAdapter adp1 = new SqlDataAdapter(sql, con);
            DataSet ds1 = new DataSet();
            adp1.Fill(ds1, "FileUpload");

            GridView1.DataSource = ds1.Tables[0] ;
            GridView1.DataBind();
            
        }
    }
    
    protected void btnUpload_Click(object sender, EventArgs e)
    {
        ArrayList ar = new ArrayList();
        if (ddlUserName.SelectedIndex != 0 && ddlCategory.SelectedIndex != 0)
        {
            string connectionString = WebConfigurationManager.ConnectionStrings["Admin"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            string sql = "Select * from BlockUser Where UserID='"+ddlUserName.Text +"' ";
            SqlDataAdapter adp1 = new SqlDataAdapter(sql, con);
            DataSet ds = new DataSet();
            adp1.Fill(ds, "BlockUser");
            for (int i = 0; i < ds.Tables["BlockUser"].Rows.Count; i++)
            {
                ar.Add(ds.Tables["BlockUser"].Rows[i]["BlockID"].ToString());
            }
            if (ar.Contains(Session["UserNa"].ToString() ))
            {
                Response.Write("<SCRIPT>alert('Your ID is Blocked.')</SCRIPT>");
                return;
            }
            else
            {
                string str = string.Empty;
                string strname = string.Empty;
                foreach (GridViewRow gvrow in GridView1.Rows)
                {
                    CheckBox chk = (CheckBox)gvrow.FindControl("chkSelect");
                    if (chk != null & chk.Checked)
                    {
                        AddRequestFile NewEntery = new AddRequestFile();
                        NewEntery.Category = gvrow.Cells[3].Text;
                        NewEntery.UserID = gvrow.Cells[4].Text;
                        NewEntery.SendID = Session["UserNa"].ToString();
                        NewEntery.UploadFile = gvrow.Cells[5].Text;
                        NewEntery.InsertData();
                    }
                }
                   

            Session["msg"] = "Request Send Successfully";
            Response.Redirect("MessageFile.aspx");
            }
        }
       
    }
}
