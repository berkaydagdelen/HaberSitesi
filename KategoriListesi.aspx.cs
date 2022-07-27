using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class KategoriListesi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.Tbl_HaberKategoriTableAdapter dt = new DataSetTableAdapters.Tbl_HaberKategoriTableAdapter();

        Repeater1.DataSource = dt.UstKategori();
        Repeater1.DataBind();
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        DataSetTableAdapters.Tbl_HaberKategoriTableAdapter dt = new DataSetTableAdapters.Tbl_HaberKategoriTableAdapter();

        Repeater1.DataSource = dt.AltKategori();
        Repeater1.DataBind();
    }
}