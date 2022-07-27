using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class deneme : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {




        DateTime tarih = DateTime.Now;

        Label1.Text = tarih.ToString();


        DataSetTableAdapters.Tbl_HaberKategoriTableAdapter dt2 = new DataSetTableAdapters.Tbl_HaberKategoriTableAdapter();

        //Repeater12.DataSource = dt2.TumKategoriler();
        //Repeater12.DataBind();



        Repeater12.DataSource = dt2.UstKategori();
        Repeater12.DataBind();

        Repeater15.DataSource = dt2.AltKategori();
        Repeater15.DataBind();

        Repeater1.DataSource = dt2.TumKategoriler();
        Repeater1.DataBind();






        DataSetTableAdapters.Tbl_HaberlerTableAdapter dt = new DataSetTableAdapters.Tbl_HaberlerTableAdapter();


        Repeater11.DataSource = dt.Son5Slider();
        Repeater11.DataBind();

        Repeater14.DataSource = dt.PopulerGonderi();
        Repeater14.DataBind();


        DataSetTableAdapters.Tbl_SponsorTableAdapter dt3 = new DataSetTableAdapters.Tbl_SponsorTableAdapter();

        Repeater2.DataSource = dt3.Sponsor();
        Repeater2.DataBind();


        DataSetTableAdapters.Tbl_LogoTableAdapter dt4 = new DataSetTableAdapters.Tbl_LogoTableAdapter();
        Repeater13.DataSource = dt4.Logo();
        Repeater13.DataBind();


    }
}
