using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CkisYap : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //hafızadaki veriyi siliyor.

        Session.Abandon();
        Response.Redirect("Login.aspx");
    }
}