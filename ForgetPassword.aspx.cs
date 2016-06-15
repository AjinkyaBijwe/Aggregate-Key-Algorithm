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

public partial class ForgetPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string Connectionstring = WebConfigurationManager.ConnectionStrings["Admin"].ConnectionString;
        SqlConnection con = new SqlConnection(Connectionstring);
        SqlDataAdapter adp = new SqlDataAdapter("SELECT * FROM [LoginData] Where EmailID='" + txtUserName.Text + "' ", con);
        DataSet ds = new DataSet();
        adp.Fill(ds, "LoginData");
        if (ds.Tables["LoginData"].Rows.Count > 0)
        {
            string pass = ds.Tables["LoginData"].Rows[0]["Pass"].ToString();
            if (txtUserName.Text   != "" && txtUserName.Text   != "&nbsp;" )
            {

                if (SendMail("Requested Password:" + pass , "mrritesharora@gmail.com", txtUserName.Text  , "9650382214", "Forgeted Password") == true)
                {
                 
                    Session["msg"] = "Password Mail.";
                    Response.Redirect("MessageFile.aspx");
                }
                else
                {
                    Session["msg"] = "Password Mail.";
                    Response.Redirect("MessageFile.aspx");
                }
            }
            else
            {
                Response.Write("<SCRIPT>alert('Please Check Email ID not be Blank.')</SCRIPT>");
                return;
            }

        }
    }

    public bool SendMail(string message, string from, string to, string pwd, string title)
    {
        string[] tokens = from.Split('@');
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

}
