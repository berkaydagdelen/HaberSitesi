using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SponsorGuncelle : System.Web.UI.Page
{
    int id;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {




            DataSetTableAdapters.Tbl_SponsorTableAdapter dt = new DataSetTableAdapters.Tbl_SponsorTableAdapter();
            TxtSponsor.Text = dt.Sponsor()[0].Sponsor;


        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        FileUpload1.SaveAs(Server.MapPath("/HaberSitesi/newsfeed/images/" + FileUpload1.FileName));


        id = Convert.ToInt32(Request.QueryString["Sponsorid"].ToString());
        DataSetTableAdapters.Tbl_SponsorTableAdapter dt = new DataSetTableAdapters.Tbl_SponsorTableAdapter();
        dt.SponsorGuncelle(TxtSponsor.Text, "/HaberSitesi/newsfeed/images/" + FileUpload1.FileName, id);



        Response.Redirect("AdminSponsor.aspx");







    }
}