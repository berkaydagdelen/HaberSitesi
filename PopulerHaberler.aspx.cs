using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PopulerHaberler : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


            DataSetTableAdapters.Tbl_HaberlerTableAdapter dt = new DataSetTableAdapters.Tbl_HaberlerTableAdapter();
            Repeater1.DataSource = dt.PopulerHaberler();
            Repeater1.DataBind();
        




    }
}