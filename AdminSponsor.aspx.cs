using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminSponsor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSetTableAdapters.Tbl_SponsorTableAdapter dt = new DataSetTableAdapters.Tbl_SponsorTableAdapter();
        Repeater1.DataSource = dt.Sponsor();
        Repeater1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("SponsorGuncelle.aspx");
    }
}