using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminHakkimizda : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSetTableAdapters.Tbl_hakkimizdaTableAdapter dt = new DataSetTableAdapters.Tbl_hakkimizdaTableAdapter();
        Repeater1.DataSource = dt.Hakkimizda();
        Repeater1.DataBind();
    }
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("HakkimizdaGuncelle.aspx");
    }
}