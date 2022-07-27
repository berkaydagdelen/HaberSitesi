using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LogoGuncelle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSetTableAdapters.Tbl_LogoTableAdapter dt = new DataSetTableAdapters.Tbl_LogoTableAdapter();
        Image1.ImageUrl = dt.Logo()[0].Logo;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
                


        FileUpload1.SaveAs(Server.MapPath("/HaberSitesi/newsfeed/images/"+FileUpload1.FileName));

        DataSetTableAdapters.Tbl_LogoTableAdapter dt = new DataSetTableAdapters.Tbl_LogoTableAdapter();
        dt.LogoGuncelle("/HaberSitesi/newsfeed/images/" + FileUpload1.FileName);
        Response.Redirect("LogoGuncelle.aspx");
    }
}