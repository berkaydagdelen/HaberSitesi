using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //oturum açmadann giriş yapmaya izin vermiyor

        if (Session["KullaniciAdi"] == null)
        {
            Response.Redirect("Login.aspx");
        }

    }
}
