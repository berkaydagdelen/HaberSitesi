using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminiletisimDetay : System.Web.UI.Page
{
    int mesajid;

    protected void Page_Load(object sender, EventArgs e)
    {

        mesajid = Convert.ToInt32(Request.QueryString["iletisimid"].ToString());


        DataSetTableAdapters.Tbl_iletisimTableAdapter dt = new DataSetTableAdapters.Tbl_iletisimTableAdapter();
        Repeater1.DataSource = dt.iletisimKisisel(mesajid);
        Repeater1.DataBind();

        //iletişim Sayısı
        DataSetTableAdapters.Tbl_iletisimTableAdapter dt2 = new DataSetTableAdapters.Tbl_iletisimTableAdapter();
        Repeater2.DataSource = dt2.iletisimSayma();
        Repeater2.DataBind();



    }
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
        DataSetTableAdapters.Tbl_iletisimTableAdapter dt = new DataSetTableAdapters.Tbl_iletisimTableAdapter();
        dt.iletisimSil(mesajid);
        Response.Redirect("adminiletisim.aspx");

    }
}