<%@ WebHandler Language="C#" Class="Handler2" %>

using System;
using System.Web;
using System.IO;
using System.Data.SqlClient;
using System.Data;
using System.Web.SessionState; 
public class Handler2 : IHttpHandler,IReadOnlySessionState  
{

    public void ProcessRequest(HttpContext context)
    {

        context.Response.ContentType = "image/jpeg";
        context.Response.Cache.SetCacheability(HttpCacheability.Public);
        context.Response.BufferOutput = false;

        string str = context.Session["AdvID"].ToString();
        Double id = 1;

        id = Convert.ToDouble(str);
        Stream stream = null;
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

    public bool IsReusable
    {
        get
        {
            return true;
        }
    }
}