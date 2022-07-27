using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class KategoriSil : System.Web.UI.Page
{
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Convert.ToInt32(Request.QueryString["HaberKategoriid"].ToString());

        DataSetTableAdapters.Tbl_HaberKategoriTableAdapter dt = new DataSetTableAdapters.Tbl_HaberKategoriTableAdapter();
        dt.KategoriSil(id);
        Response.Redirect("KategoriListesi.aspx");

    }
}