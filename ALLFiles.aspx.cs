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
using System.Xml.Linq;

public partial class ALLFiles : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        #region GrideView Row Command
        if (e.CommandName == "View")
        {
            Session["FileID"] = null;
            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = GridView1.Rows[index];
            string fileName = row.Cells[0].Text;
            Session["FileID"] = fileName;
            Response.Redirect("KeyFile.aspx"); 
            //GridView1.DataSource = null;
            //GridView1.DataBind();
        }
        #endregion
    }
}
