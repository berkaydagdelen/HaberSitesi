using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;



public partial class deneme : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {


        string conString = ConfigurationManager.ConnectionStrings["haberlerConnectionString"].ConnectionString;
        SqlConnection baglanti = new SqlConnection(conString);




        string kategoriid = "";
        string Haber = "";


        kategoriid = Request.QueryString["HaberKategoriid"];

        Haber = Request.QueryString["Haberid"];


        //haber kategoriden gelen haberler

        baglanti.Open();


        SqlCommand komut = new SqlCommand("SELECT * FROM Tbl_Haberler WHERE HaberKategoriid =@p1 ORDER BY Haberid desc", baglanti);
        komut.Parameters.AddWithValue("@p1", kategoriid);
        SqlDataAdapter dr = new SqlDataAdapter(komut);
        DataTable dt = new DataTable();
        dr.Fill(dt);
        Session["Table"] = dt;
        DataTable sdt = new DataTable();
        sdt = (DataTable)Session["Table"];

        CollectionPager1.DataSource = sdt.DefaultView;
        CollectionPager1.BindToControl = Repeater1;
        Repeater1.DataSource = CollectionPager1.DataSourcePaged;
        Repeater1.DataBind();

        baglanti.Close();




       




        

        //alt'ın  alt kategori

        baglanti.Open();
        SqlCommand komut4 = new SqlCommand("SELECT HaberKategoriAd, HaberKategoriid FROM Tbl_HaberKategori WHERE HaberKategoriid=@p1", baglanti);
        komut4.Parameters.AddWithValue("@p1", kategoriid);
        SqlDataReader dr4 = komut4.ExecuteReader();
        Repeater2.DataSource = dr4;
        Repeater2.DataBind();
        baglanti.Close();




        //rastgele ilgili gönderi
        baglanti.Open();
        SqlCommand komut5 = new SqlCommand("SELECT TOP 3 Haberid,HaberBaslik,HaberResim from Tbl_Haberler where HaberKategoriid=@p1 ORDER BY NEWID()", baglanti);
        komut5.Parameters.AddWithValue("@p1", kategoriid);
        SqlDataReader dr5 = komut5.ExecuteReader();
        Repeater3.DataSource = dr5;
        Repeater3.DataBind();
        baglanti.Close();





    }
}