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

public partial class BlockUserDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lblBlock.Text = Session["blockID"].ToString(); 
        }

    }
    protected void btnDecrypt_Click(object sender, EventArgs e)
    {
        AddBlock NewEntery = new AddBlock();
        NewEntery.BlockID = lblBlock.Text;
        NewEntery .UserID =Session["UserNa"].ToString();
        NewEntery.InsertData();
        Session["msg"] = "User is Blocked.";
        Response.Redirect("MessageFile.aspx"); 
    }
    protected void btnDecrypt0_Click(object sender, EventArgs e)
    {
        Response.Redirect("BlockUser.aspx"); 
    }
}
