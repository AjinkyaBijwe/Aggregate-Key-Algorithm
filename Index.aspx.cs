using System;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Collections;
public partial class _Default : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        GetData();
    }

    #region SideBar

    #endregion

    #region Banner
    public void Banner()
    {
        //string Connectionstring = WebConfigurationManager.ConnectionStrings["Admin"].ConnectionString;
        //SqlConnection con = new SqlConnection(Connectionstring);
        //SqlDataAdapter adp1 = new SqlDataAdapter("Select ID From Advertisment WHERE type='BANNER' ORDER BY [ID] DESC", con);
        //DataSet ds1 = new DataSet();
        //adp1.Fill(ds1, "Advertisment");
        //DataList5.DataSource = ds1;
        //DataList5.DataBind(); 
      
    }
    #endregion

    #region GetData()
    public void GetData()
    {
        Banner();
      
    }
    #endregion

    protected void DataList3_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        string Connectionstring = WebConfigurationManager.ConnectionStrings["Admin"].ConnectionString;
        string service = null;
        LinkButton lnkbtnPage1 = (LinkButton)e.Item.FindControl("LinkButton1");
        service = lnkbtnPage1.CommandArgument;

        SqlConnection con = new SqlConnection(Connectionstring);
        SqlDataAdapter adp2 = new SqlDataAdapter("Select Top 3 ID, categories From AllCategory Where service='" + service + "' ", con);
        DataSet ds2 = new DataSet();
        adp2.Fill(ds2, "AllCategory");
        DataList dtlist = (DataList)e.Item.FindControl("DataList6");
        dtlist.DataSource = ds2.Tables[0];
        dtlist.DataBind();

     
    }
    
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string boundItemId = null;
        LinkButton b = (LinkButton)sender as LinkButton;
        boundItemId = b.CommandArgument;
        Session["sideID"] = boundItemId;
        Response.Redirect("CategorySearchList.aspx"); 
    }

    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
    {
        string boundItemId = null;
        ImageButton b = (ImageButton)sender as ImageButton;
        boundItemId = b.CommandArgument;
        Session["AdvID"] = boundItemId;
        Response.Redirect("SidebarAdvertismentDetails.aspx"); 
        
    }

    protected void ImageButton1_Click2(object sender, ImageClickEventArgs e)
    {
        string boundItemId = null;
        ImageButton b = (ImageButton)sender as ImageButton;
        boundItemId = b.CommandArgument;
        Session["AdvID"] = boundItemId;
        Response.Redirect("SidebarAdvertismentDetails.aspx"); 
    }

    protected void lnkcate_Click(object sender, EventArgs e)
    {
        string boundItemId = null;
        LinkButton b = (LinkButton)sender as LinkButton;
        boundItemId = b.CommandArgument;
        Session["cateID"] = boundItemId;
        Response.Redirect("CategorySearchList.aspx"); 

    }
}
