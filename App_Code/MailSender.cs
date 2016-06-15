//using System.Web.Mail;
using System;
using System.Text;
using System.Web;
using System.Net.Mail;
using System.Net.Security;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;
public class MailSender
{

   
    public bool SendEmail(string from, string Pwd, string pBody, string subject, string to, string ServerName,int ServerPort)
   {

      
         bool success=false;
         try
         {
             MailMessage mymail = new MailMessage();
             mymail.From = new MailAddress(from);
             mymail.To.Add(new MailAddress(to));
             mymail.Subject = subject;
             mymail.Body = pBody;
             mymail.Priority = MailPriority.High;
             mymail.IsBodyHtml = true;
             SmtpClient client = new SmtpClient(ServerName);
             client.Credentials = new System.Net.NetworkCredential(from, Pwd);
             client.Port = ServerPort; 
             client.Timeout = 50000;
             client.DeliveryMethod = SmtpDeliveryMethod.Network;
             client.EnableSsl = true;
             client.Send(mymail);
             success = true;
           
         }
         catch
         {
             success = false;
           
         }
         return success;
   }

    
    public static string RandomString(int size, bool lowerCase)
    {
        StringBuilder builder = new StringBuilder();
        Random random = new Random();
        char ch;
        for (int i = 0; i < size; i++)
        {
            ch = Convert.ToChar(Convert.ToInt32(Math.Floor(26 * random.NextDouble() + 65)));
            builder.Append(ch);
        }
        if (lowerCase)
            return builder.ToString().ToLower();
        return builder.ToString();
    }
}

