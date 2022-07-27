    using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {



    }
    protected void Button1_Click(object sender, EventArgs e)
    {




        DataSetTableAdapters.Tbl_iletisimTableAdapter dt = new DataSetTableAdapters.Tbl_iletisimTableAdapter();
        dt.iletisim(iletisimAdSoyad.Text, İletisimMail.Text,iletisimBaslik.Text, iletisimMesaj.Text);

        Response.Redirect("iletisim.aspx");





    }
}