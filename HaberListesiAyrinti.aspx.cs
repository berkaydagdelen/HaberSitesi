using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HaberListesiAyrinti : System.Web.UI.Page
{
    int id, deneme;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Convert.ToInt32(Request.QueryString["Haberid"].ToString());



        if (Page.IsPostBack == false)
        {


            //bilgiler listesi


            DataSetTableAdapters.Tbl_HaberlerTableAdapter dt = new DataSetTableAdapters.Tbl_HaberlerTableAdapter();

            Txtid.Text = id.ToString();
            TxtBaslik.Text = dt.HaberGetir(id)[0].HaberBaslik;
            Txticerik.Text = dt.HaberGetir(id)[0].Habericerik;
            TxtAlticerik.Text = dt.HaberGetir(id)[0].HaberAlticerik;
            Image1.ImageUrl = dt.HaberGetir(id)[0].HaberResim;
            TxtKategori.Text = dt.HaberGetir(id)[0].KategoriAd;








        }
    }

    protected void BtnSil_Click(object sender, EventArgs e)
    {
        id = Convert.ToInt32(Request.QueryString["Haberid"].ToString());

        DataSetTableAdapters.Tbl_HaberlerTableAdapter dt = new DataSetTableAdapters.Tbl_HaberlerTableAdapter();
        dt.HaberSil(id);
        Response.Redirect("HaberListesi.aspx");

    }

    protected void BtnPopuler_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.Tbl_HaberlerTableAdapter dt = new DataSetTableAdapters.Tbl_HaberlerTableAdapter();
        dt.PopulerGuncelle(id);
    }
    protected void BtnGuncelle_Click(object sender, EventArgs e)
    {
        Response.Redirect("HaberGuncelle.aspx?Haberid=" + Txtid.Text);
    }
}