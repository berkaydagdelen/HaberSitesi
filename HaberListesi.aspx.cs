using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class HaberListesi : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {


        string conString = ConfigurationManager.ConnectionStrings["haberlerConnectionString"].ConnectionString;
        SqlConnection baglanti = new SqlConnection(conString);


        baglanti.Open();






        SqlCommand komut = new SqlCommand("SELECT Haberid, HaberBaslik, Habericerik, HaberAlticerik, HaberResim, HaberKategoriid, HaberTarih, HaberPopuler FROM     Tbl_Haberler order by  Haberid desc ", baglanti);
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





    }
}