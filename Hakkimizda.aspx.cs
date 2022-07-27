using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Hakkimizda : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSetTableAdapters.Tbl_hakkimizdaTableAdapter dt = new DataSetTableAdapters.Tbl_hakkimizdaTableAdapter();
        Repeater1.DataSource = dt.Hakkimizda();
        Repeater1.DataBind();

    }
}