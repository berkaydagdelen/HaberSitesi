using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HaberOlustur : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {



        if (Page.IsPostBack == false)
        {
            //Kategori Listeleme


            DataSetTableAdapters.Tbl_HaberKategoriTableAdapter dt = new DataSetTableAdapters.Tbl_HaberKategoriTableAdapter();
            DropDownList1.DataSource = dt.TumKategoriler();
            DropDownList1.DataTextField = "HaberKategoriAd";
            DropDownList1.DataValueField = "HaberKategoriid";
            DropDownList1.DataBind();


        }




    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        // FileUpload1.SaveAs(Server.MapPath("/login tema/AdminLTE-3.0.4/dist/img/" + FileUpload1.FileName));
        FileUpload1.SaveAs(Server.MapPath("/HaberSitesi/newsfeed/images/" + FileUpload1.FileName));

        DataSetTableAdapters.Tbl_HaberlerTableAdapter dt2 = new DataSetTableAdapters.Tbl_HaberlerTableAdapter();
        dt2.HaberEkle(TxtBaslik.Text, Txticerik.Text, TxtAlticerik.Text, "/HaberSitesi/newsfeed/images/" + FileUpload1.FileName, Convert.ToInt32(DropDownList1.SelectedValue));
        Response.Redirect("HaberListesi.aspx");
      

    }
}