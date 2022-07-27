using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class AnaSayfa : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {




        DateTime tarih = DateTime.Now;

        Label1.Text = tarih.ToString();




        DataSetTableAdapters.Tbl_HaberlerTableAdapter dt = new DataSetTableAdapters.Tbl_HaberlerTableAdapter();
        
        Repeater1.DataSource = dt.Son5Gonderi();
        Repeater1.DataBind();

        Repeater2.DataSource = dt.Saglik();
        Repeater2.DataBind();

        Repeater3.DataSource = dt.SaglikSon4();
        Repeater3.DataBind();



        Repeater4.DataSource = dt.Teknoloji();
        Repeater4.DataBind();

        Repeater5.DataSource = dt.TeknolojiSon4();
        Repeater5.DataBind();

        Repeater6.DataSource = dt.Bilgisayar();
        Repeater6.DataBind();

        Repeater7.DataSource = dt.BilgisayarSon4();
        Repeater7.DataBind();

        Repeater8.DataSource = dt.Bilim();
        Repeater8.DataBind();

        Repeater9.DataSource = dt.BilimSon4();
        Repeater9.DataBind();

        //Repeater10.DataSource = dt.Son5Gonderi();
        //Repeater10.DataBind();

        Repeater10.DataSource = dt.Son5Slider();
        Repeater10.DataBind();

        Repeater11.DataSource = dt.Son5Slider();
        Repeater11.DataBind();


        Repeater14.DataSource = dt.PopulerGonderi();
        Repeater14.DataBind();


        Repeater15.DataSource = dt.Resim6();
        Repeater15.DataBind();


        DataSetTableAdapters.Tbl_HaberKategoriTableAdapter dt2 = new DataSetTableAdapters.Tbl_HaberKategoriTableAdapter();


        Repeater12.DataSource = dt2.TumKategoriler();
        Repeater12.DataBind();

        Repeater12.DataSource = dt2.UstKategori();
        Repeater12.DataBind();

        Repeater19.DataSource = dt2.AltKategori();
        Repeater19.DataBind();



        Repeater16.DataSource = dt2.TumKategoriler();
        Repeater16.DataBind();


        Repeater18.DataSource = dt2.TumKategoriler();
        Repeater18.DataBind();


        DataSetTableAdapters.Tbl_SponsorTableAdapter dt3 = new DataSetTableAdapters.Tbl_SponsorTableAdapter();

        Repeater17.DataSource = dt3.Sponsor();
        Repeater17.DataBind();

        DataSetTableAdapters.Tbl_LogoTableAdapter dt4 = new DataSetTableAdapters.Tbl_LogoTableAdapter();
        Repeater13.DataSource = dt4.Logo();
        Repeater13.DataBind();  






    }
}