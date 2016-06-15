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

using System.Text;
public partial class UserRequest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        #region GrideView Row Command
        if (e.CommandName == "Response")
        {

            ArrayList ar = new ArrayList();
            ArrayList arid = new ArrayList();
           
            ArrayList Cate = new ArrayList();
            ArrayList FileUp = new ArrayList();
            int Value = 0;
            string str = string.Empty;
            string strname = string.Empty;
            foreach (GridViewRow gvrow in GridView1.Rows)
            {
                CheckBox chk = (CheckBox)gvrow.FindControl("chkSelect");
                if (chk != null & chk.Checked)
                {
                    ar.Add(gvrow.Cells[3].Text +", "+ gvrow.Cells[4].Text);
                    arid.Add(gvrow.Cells[1].Text);
                    Cate.Add(gvrow.Cells[3].Text);
                    FileUp.Add(gvrow.Cells[4].Text);
                 
                }
            }
            for (int i = 0; i < arid.Count; i++)
            {
                Value = Value + Convert.ToInt32(arid[i]); 
            }
            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = GridView1.Rows[index];
            string fileName = row.Cells[1].Text;
            Session["FileID"] = arid;
            Session["Cate"] = Cate;
            Session["UserID"] = row.Cells[2].Text;
            Session["SendID"] = row.Cells[5].Text;
            Session["KVCKet"] = EncreyptionAlogorithm(Value.ToString()+"IM" );
            Session["FilUp"] = FileUp;
            Session["AllFile"] = String.Join("/", (string[])ar.ToArray(typeof(string)));
            Response.Redirect("SendKeyViaMail.aspx"); 
           
            
            //AddOwnerResponse NewEntery = new AddOwnerResponse();
            //NewEntery.Category = row.Cells[2].Text;
            //NewEntery.UserID = row.Cells[3].Text;
            //NewEntery.SendID =   row.Cells[1].Text;
            //NewEntery.KVCKey = EncreyptionAlogorithm (row.Cells[0].Text); 
            //NewEntery.InsertData();
          
        }
        #endregion
    }

   

    public string EncreyptionAlogorithm(string value)
    {
        byte[] ASCIIValues = Encoding.ASCII.GetBytes(value);
        string encryptdata = null;
        foreach (byte b in ASCIIValues)
        {

            string binarydata = Convert.ToString(Convert.ToInt64(b.ToString()), 2);
            string NewData = null;
            switch (binarydata.Length.ToString())
            {
                case "7": NewData = "0" + binarydata;
                    break;
                case "6": NewData = "00" + binarydata;
                    break;
                case "5": NewData = "000" + binarydata;
                    break;
                case "4": NewData = "0000" + binarydata;
                    break;
                case "3": NewData = "00000" + binarydata;
                    break;
                case "2": NewData = "000000" + binarydata;
                    break;
                case "1": NewData = "0000000" + binarydata;
                    break;
                case "0": NewData = "00000000" + binarydata;
                    break;

            }
            int result = Convert.ToInt32(NewData, 2);
            string complementedBinaryNumber = Convert.ToString(~result, 2);
            complementedBinaryNumber = complementedBinaryNumber.Remove(0, complementedBinaryNumber.Length - NewData.Length);
            string hexdata = Convert.ToInt32(complementedBinaryNumber, 2).ToString();
            char charData;
            charData = (char)(Convert.ToInt64(hexdata) / 4);

            string remainder = (Convert.ToInt64(hexdata) % 4).ToString();
            encryptdata += charData.ToString() + remainder;

        }
        return encryptdata;

    }
}
