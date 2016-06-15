using System;
using System.Configuration;

using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.IO;
using System.Collections;
using System.Collections.Generic;

public class PhotoManager
{

   

    public static Stream GetPhotoAdver(double photoid)
    {
        using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["Admin"].ConnectionString))
        {

            using (SqlCommand command = new SqlCommand("GetPhotoAdver", connection))
            {
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add(new SqlParameter("@PhotoID", photoid));

                connection.Open();
                object result = command.ExecuteScalar();
                try
                {
                    return new MemoryStream((byte[])result);
                }
                catch
                {
                    return null;
                }
            }
        }
    }

  

    public static Stream GetPhotoBan(double photoid)
    {
        using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["Admin"].ConnectionString))
        {

            using (SqlCommand command = new SqlCommand("GetPhotoBan", connection))
            {
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add(new SqlParameter("@PhotoID", photoid));

                connection.Open();
                object result = command.ExecuteScalar();
                try
                {
                    return new MemoryStream((byte[])result);
                }
                catch
                {
                    return null;
                }
            }
        }
    }

  

   

  

   

  

  
    

  
    }

