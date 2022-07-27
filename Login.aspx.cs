using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    string conString;
    SqlConnection baglanti;

    protected void Page_Load(object sender, EventArgs e)
    {


        //sosyal medya getirme

        DataSetTableAdapters.Tbl_AdminTableAdapter dt2 = new DataSetTableAdapters.Tbl_AdminTableAdapter();

        Repeater1.DataSource = dt2.AdminSosyalMedya();
        Repeater1.DataBind();

        //logo getir

        DataSetTableAdapters.Tbl_LogoTableAdapter dt4 = new DataSetTableAdapters.Tbl_LogoTableAdapter();
        Repeater13.DataSource = dt4.Logo();
        Repeater13.DataBind();
    }
    protected void TxtGiris_Click(object sender, EventArgs e)
    {


    }



    protected void BtnGiris_Click(object sender, EventArgs e)
    {

        conString = ConfigurationManager.ConnectionStrings["haberlerConnectionString"].ConnectionString;
        baglanti = new SqlConnection(conString);


        baglanti.Open();


        //büyük küçük harf uyumu...
        SqlCommand komut = new SqlCommand("SELECT * FROM Tbl_Admin WHERE KullaniciAdi Collate SQL_Latin1_General_CP1254_CS_AS = @p1 and  KisiSifre Collate SQL_Latin1_General_CP1254_CS_AS =@p2 ", baglanti);
          
        komut.Parameters.AddWithValue("@p1", TxtKullaniciAdi.Text);
        komut.Parameters.AddWithValue("@p2", TxtSifre.Text);
        SqlDataReader dr = komut.ExecuteReader();

        if (dr.Read())
        {
            Session.Add("KullaniciAdi", TxtKullaniciAdi.Text);
            Response.Redirect("HaberListesi.aspx?KullaniciAdi=" + TxtKullaniciAdi.Text);
        }
        else
        {
            Response.Write("<script language=javascript>alert('Kullanıcı adı veya Şifre Yanlış')</script>");

            TxtKullaniciAdi.Text = "";
            TxtSifre.Text = "";


        }

        baglanti.Close();
    }
}