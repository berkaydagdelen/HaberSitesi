using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HaberGuncelle : System.Web.UI.Page
{
    int id;

    protected void Page_Load(object sender, EventArgs e)
    {

        id = Convert.ToInt32(Request.QueryString["Haberid"].ToString());

        if (Page.IsPostBack == false)
        {
            //Kategori listesi

            DataSetTableAdapters.Tbl_HaberKategoriTableAdapter dt2 = new DataSetTableAdapters.Tbl_HaberKategoriTableAdapter();
            DropDownList1.DataSource = dt2.TumKategoriler();
            DropDownList1.DataTextField = "HaberKategoriAd";
            DropDownList1.DataValueField = "HaberKategoriid";
            DropDownList1.DataBind();


            //bilgiler listesi


            DataSetTableAdapters.Tbl_HaberlerTableAdapter dt = new DataSetTableAdapters.Tbl_HaberlerTableAdapter();

            TxtBaslik.Text = dt.HaberGetir(id)[0].HaberBaslik;
            Txticerik.Text = dt.HaberGetir(id)[0].Habericerik;
            TxtAlticerik.Text = dt.HaberGetir(id)[0].HaberAlticerik;
            Image1.ImageUrl = dt.HaberGetir(id)[0].HaberResim;








        }


    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        FileUpload1.SaveAs(Server.MapPath("/HaberSitesi/newsfeed/images/" + FileUpload1.FileName));

        DataSetTableAdapters.Tbl_HaberlerTableAdapter dt = new DataSetTableAdapters.Tbl_HaberlerTableAdapter();
        dt.HaberGuncelle(TxtBaslik.Text, Txticerik.Text, TxtAlticerik.Text, "/HaberSitesi/newsfeed/images/" + FileUpload1.FileName, Convert.ToInt32(DropDownList1.SelectedValue),id);
        
        Response.Redirect("HaberListesi.aspx");
    }
}