using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminBilgileri : System.Web.UI.Page
{
    //string kisiKullaniciAdi;

    int id;
    protected void Page_Load(object sender, EventArgs e)
    {

        id = 1;


        if (IsPostBack == false)
        {

   

            DataSetTableAdapters.Tbl_AdminTableAdapter dt = new DataSetTableAdapters.Tbl_AdminTableAdapter();
            TxtAdminid.Text = id.ToString();
            TxtAdSoyad.Text = dt.SecilenAdminGetir(id)[0].KisiAdSoyad;
            TxtTelefon.Text = dt.SecilenAdminGetir(id)[0].KisiTelefon.ToString();
            TxtKullaniciAdi.Text = dt.SecilenAdminGetir(id)[0].KullaniciAdi;
            TxtSifre.Text = dt.SecilenAdminGetir(id)[0].KisiSifre;
            TxtMail.Text = dt.SecilenAdminGetir(id)[0].KisiMail;
            TxtTcNo.Text = dt.SecilenAdminGetir(id)[0].TcNo.ToString();
            TxtFacebook.Text = dt.SecilenAdminGetir(id)[0].Facebook;
            TxtTwitter.Text = dt.SecilenAdminGetir(id)[0].Twitter;
            Txtinstagram.Text = dt.SecilenAdminGetir(id)[0].instagram;

        }
    }
    protected void BtnGuncelle_Click(object sender, EventArgs e)
    {

        id = Convert.ToInt32(TxtAdminid.Text);

        DataSetTableAdapters.Tbl_AdminTableAdapter dt = new DataSetTableAdapters.Tbl_AdminTableAdapter();

        dt.AdminGuncelle(TxtKullaniciAdi.Text, TxtAdSoyad.Text, Convert.ToInt64(TxtTcNo.Text), Convert.ToInt64(TxtTelefon.Text), TxtMail.Text, TxtSifre.Text, TxtFacebook.Text, Txtinstagram.Text, TxtTwitter.Text, id);

        
        Response.Redirect("Adminbilgileri.aspx");
    }
}