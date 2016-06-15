using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

public class Advertisment
{
	private int _id;

	public int ID { get { return _id; } }

    public Advertisment(int id)
    {
		_id = id;
	}

}
