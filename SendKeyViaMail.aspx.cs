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
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Web.Mail;

public partial class SendKeyViaMail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToString(Session["FileID"].ToString()) != "")
        {
            lblKACKey.Text = Session["KVCKet"].ToString();
            lblSelUser.Text = Session["SendID"].ToString();
        }
    }
    protected void btnGoTo_Click(object sender, EventArgs e)
    {

        if (txtPassword.Text != "" && lblSelUser.Text != "&nbsp;" && lblSelUser.Text != "" && Convert.ToString(Session["UserNa"]) != "" && lblKACKey.Text != "")
        {
            lblStartMili.Text = DateTime.Now.Millisecond.ToString();
            lblStartSec.Text = DateTime.Now.Second.ToString();
            lblStartMinute.Text = DateTime.Now.Minute.ToString();
            if (SendMail("Requested File:" + Session["AllFile"].ToString() + " KAC Key :" + lblKACKey.Text, Session["UserID"].ToString(), lblSelUser.Text, txtPassword.Text, "KAC Key.") == true)
            {
                ArrayList arid = new ArrayList();
                ArrayList Cate = new ArrayList();
                ArrayList FileUp = new ArrayList();

                Cate = (ArrayList)Session["Cate"];
                arid = (ArrayList)Session["FileID"];
                FileUp = (ArrayList)Session["FilUp"];
                for (int i = 0; i < arid.Count; i++)
                {
                    AddOwnerResponse NewEntery = new AddOwnerResponse();
                    NewEntery.Category = Cate[i].ToString();
                    NewEntery.UserID = Session["UserID"].ToString();
                    NewEntery.SendID = Session["SendID"].ToString();
                    NewEntery.KVCKey = lblKACKey.Text;
                    NewEntery.UpFile = FileUp[i].ToString();
                    NewEntery.InsertData();
                    UpdatedData(arid[i].ToString());

                }
                lblMessage.Text = "Responses Key Send";
                //Response.Redirect("MessageFile.aspx");
            }
            else
            {
                ArrayList arid = new ArrayList();
                ArrayList Cate = new ArrayList();
                ArrayList FileUp = new ArrayList();

                Cate = (ArrayList)Session["Cate"];
                arid = (ArrayList)Session["FileID"];
                FileUp = (ArrayList)Session["FilUp"];
                for (int i = 0; i < arid.Count; i++)
                {
                    AddOwnerResponse NewEntery = new AddOwnerResponse();
                    NewEntery.Category = Cate[i].ToString();
                    NewEntery.UserID = Session["UserID"].ToString();
                    NewEntery.SendID = Session["SendID"].ToString();
                    NewEntery.KVCKey = lblKACKey.Text;
                    NewEntery.UpFile = FileUp[i].ToString();
                    NewEntery.InsertData();
                    UpdatedData(arid[i].ToString());
                }
                lblMessage.Text = "Responses Key Send";
                //Response.Redirect("MessageFile.aspx");

            }
        }
        else
        {
            Response.Write("<SCRIPT>alert('Please Check Email-ID, Password AND Key not be Blank.')</SCRIPT>");
            return;
        }

        lblEndMili.Text = DateTime.Now.Millisecond.ToString();
        lblEndSec.Text = DateTime.Now.Second.ToString();
        lblEndMinute.Text = DateTime.Now.Minute.ToString();
        lblMiliSec.Text = (Convert.ToDouble(lblEndMili.Text) - Convert.ToDouble(lblStartMili.Text)).ToString();
        lblSec.Text = (Convert.ToDouble(lblEndSec.Text) - Convert.ToDouble(lblStartSec.Text)).ToString();
        lblMinute.Text = (Convert.ToDouble(lblEndMinute.Text) - Convert.ToDouble(lblStartMinute.Text)).ToString();
    }

    public void UpdatedData(string FileID)
    {
        string Connectionstring = WebConfigurationManager.ConnectionStrings["Admin"].ConnectionString;
        SqlConnection con = new SqlConnection(Connectionstring);
        con.Open();
        SqlDataAdapter adp = new SqlDataAdapter("Update RequestedFile SET FStat='Confirmed' Where ID=" + FileID, con);
        DataSet ds = new DataSet();
        adp.Fill(ds, "RequestedFile");
    }

    public bool SendMail(string message, string from, string to, string pwd, string title)
    {
        string[] tokens = Session["UserNa"].ToString().Split('@');
        string domain = tokens[1];
        tokens = domain.Split('.');
        string smtp = "";
        int port = 0;
        bool abc = false;
        MailSender ms = new MailSender();

        #region Token
        if (tokens.Length == 2)
        {
            switch (tokens[0])
            {
                case "hotmail":
                    smtp = "smtp.live.com";
                    port = 25;
                    break;
                case "rediffmail":
                    smtp = "smtp.rediffmail.com";
                    port = 25;
                    break;
                case "gmail":
                    smtp = "smtp.gmail.com";
                    port = 587;
                    break;
                case "yahoo":
                    smtp = "smtp.mail.yahoo.com";
                    port = 465;
                    break;
                case "ymail":
                    smtp = "smtp.mail.yahoo.com";
                    port = 465;
                    break;
            }

            if (smtp != "" && port != 0)
            {

                abc = ms.SendEmail(from, pwd, message, title, to, smtp, port);
            }

        }
        #endregion

        return abc;
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

    public string DecryptionAlogorithm(string value)
    {
        string decryResult = null;
        for (int i = 0; i < value.Length; i += 2)
        {

            byte[] ASCIIValues = Encoding.ASCII.GetBytes(value.Substring(i, 1));

            string decrydata = ((Convert.ToInt64(ASCIIValues[0]) * 4) + Convert.ToInt64(value.Substring(i + 1, 1))).ToString();
            string decrybinarydata = Convert.ToString(Convert.ToInt64(decrydata), 2);
            int result = Convert.ToInt32(decrybinarydata, 2);

            string complementedBinaryNumber = Convert.ToString(~result, 2);
            complementedBinaryNumber = complementedBinaryNumber.Remove(0, complementedBinaryNumber.Length - decrybinarydata.Length);

            string decryReversdata = complementedBinaryNumber;

            string decryHex = Convert.ToInt32(complementedBinaryNumber, 2).ToString();
            char charData;
            charData = (char)(Convert.ToInt64(decryHex));
            decryResult += charData.ToString();

        }
        return decryResult;
    }

}
