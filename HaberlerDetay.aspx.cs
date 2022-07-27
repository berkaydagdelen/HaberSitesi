using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class HaberDetay : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {

        string conString = ConfigurationManager.ConnectionStrings["haberlerConnectionString"].ConnectionString;
        SqlConnection baglanti = new SqlConnection(conString);
        
   


        string Haberid = "";


        Haberid = Request.QueryString["Haberid"];
        // kategoriid = Request.QueryString["HaberKategoriid"];



        //aşağıdaki haberler

        baglanti.Open();
        SqlCommand komut = new SqlCommand("SELECT HaberBaslik, HaberAlticerik, Habericerik, HaberResim,HaberTarih, Haberid FROM Tbl_Haberler WHERE Haberid =@p2 ", baglanti);
        komut.Parameters.AddWithValue("@p2", Haberid);
        SqlDataReader dr = komut.ExecuteReader();
        Repeater1.DataSource = dr;
        Repeater1.DataBind();
        baglanti.Close();



        //alt'ın  alt kategori

        baglanti.Open();
        SqlCommand komut4 = new SqlCommand("select * from Tbl_Haberler inner join Tbl_HaberKategori on Tbl_Haberler.HaberKategoriid=Tbl_HaberKategori.HaberKategoriid WHERE Haberid=@p1", baglanti);
        komut4.Parameters.AddWithValue("@p1", Haberid);
        SqlDataReader dr4 = komut4.ExecuteReader();
        Repeater2.DataSource = dr4;
        Repeater2.DataBind();
        baglanti.Close();


        //rastgele ilgili gönderi
        baglanti.Open();
        SqlCommand komut5 = new SqlCommand("select TOP 3 haberid, HaberBaslik,HaberResim,HaberKategoriid   from Tbl_Haberler where HaberKategoriid=(select HaberKategoriid from Tbl_Haberler where haberid=@p1) ORDER BY NEWID()", baglanti);
        komut5.Parameters.AddWithValue("@p1", Haberid);
        SqlDataReader dr5 = komut5.ExecuteReader();
        Repeater3.DataSource = dr5;
        Repeater3.DataBind();
        baglanti.Close();

       



    }
}