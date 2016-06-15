<%@ WebHandler Language="C#" Class="GetAdvertisment" %>

using System;
using System.Web;
using System.IO;
using System.Data.SqlClient;
using System.Data;
using System.Web.SessionState;
public class GetAdvertisment : IHttpHandler, IReadOnlySessionState 
{
    public void ProcessRequest(HttpContext context)
    {
        context.Response.ContentType = "image/jpeg";
        context.Response.Cache.SetCacheability(HttpCacheability.Public);
        context.Response.BufferOutput = false;
        Int64 id = -1;
        Stream stream = null;
        if (context.Request.QueryString["AdverID"] != null && context.Request.QueryString["AdverID"] != "")
        {
            id = Convert.ToInt64(context.Request.QueryString["AdverID"]);
            stream = PhotoManager.GetPhotoAdver(id);


            const int buffersize = 1024 * 16;
            byte[] buffer = new byte[buffersize];
            int count = stream.Read(buffer, 0, buffersize);
            while (count > 0)
            {
                context.Response.OutputStream.Write(buffer, 0, count);
                count = stream.Read(buffer, 0, buffersize);
            }
        }
    }

    public bool IsReusable
    {
        get
        {
            return true;
        }
    }
    
}