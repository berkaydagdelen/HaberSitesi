using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class KategoriGuncelle : System.Web.UI.Page
{
    int id;

    protected void Page_Load(object sender, EventArgs e)
    {
        id = Convert.ToInt32(Request.QueryString["HaberKategoriid"].ToString());


        if (Page.IsPostBack == false)
        {


            DataSetTableAdapters.Tbl_HaberKategoriTableAdapter dt = new DataSetTableAdapters.Tbl_HaberKategoriTableAdapter();

            TxtKategoriid.Text = id.ToString();
            TxtKategoriAd.Text = dt.KategoriGetir(id)[0].HaberKategoriAd;

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.Tbl_HaberKategoriTableAdapter dt = new DataSetTableAdapters.Tbl_HaberKategoriTableAdapter();
        dt.KategoriGuncelle(TxtKategoriAd.Text,id);
        Response.Redirect("KategoriListesi.aspx");

    }
}