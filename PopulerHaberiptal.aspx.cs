using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PopulerHaberiptal : System.Web.UI.Page
{
    int id;

    protected void Page_Load(object sender, EventArgs e)
    {

        id = Convert.ToInt32(Request.QueryString["haberid"].ToString());



        DataSetTableAdapters.Tbl_HaberlerTableAdapter dt = new DataSetTableAdapters.Tbl_HaberlerTableAdapter();
        dt.Populeriptal(id);
        Response.Redirect("PopulerHaberler.aspx");
    }
}